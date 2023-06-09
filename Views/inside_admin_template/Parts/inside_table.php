﻿<?php

$table_class = "\\Tools\\InsideAutoTables\\Tables\\".$table_name;
if (!class_exists($table_class)) exit('No Table '.$table_name.' class!');
$table_obj = new $table_class();
$table_obj->init();

$table_config = $table_obj->table_config;
$table_columns = $table_obj->table_columns;

$key_column = $table_config['key'];
$columns_names = array();
$tab_name = '';

if (isset($table_config['sum_function'])) {
    $sum = array();
    foreach ($table_config['sum_function'] as $sum_field) {
        $sum[$sum_field] = 0;
    }
}
if (isset($table_config['avg_function'])) {
    $sum_avg = array();
    $qnt = array();
    foreach ($table_config['avg_function'] as $sum_field) {
        $sum_avg[$sum_field] = 0;
        $qnt[$sum_field] = 0;
    }
}


?>

<table class="table table-responsive table-bordered stickytable">
    <thead>
    <tr>
        <th class="first_col">
            <input id="box0" type="checkbox" class="with-font">
            <label for="box0"></label>
        </th>

        <?php
        foreach ($table_columns as $config_row) {
            if (isset($config_row['in_crud'])) {
                $tmp_name = $config_row['name'];
                $columns_names[$tmp_name] = $config_row['text'];
                ?>


                <th class="pdg_column_header" column="<?= $config_row['name'] ?>">
                    <?= $config_row['text'] ?>
                </th>

            <?php }
        } ?>
        <?php if (isset($table_config['status_rel_name'])) { ?>
            <?php foreach ($adv_rel_inputs as $rel_row) { ?>
                <?php if ($rel_row['name'] == $table_config['status_rel_name']) { ?>
                    <th class="pdg_column_header"><?= $rel_row['status_title_name']; ?></th>
                    <?php
                    $status_name = $rel_row['status_title_name'];
                } ?>
            <?php } ?>
        <?php } ?>

        <th class="">
        </th>
    </tr>
    </thead>

    <?php
    foreach ($table_arr as $table_row) {
        ?>
        <tr class="status_active table_row">
            <div class="mobile_buts">
                <td class="mobile_status_cell status_active">
                    <span>#<?= $table_row[$key_column] ?></span>
                </td>
                <td class="first_col">
                    <input type="checkbox" name="pdg_crud_checkbox[]" class="pdg_column_checkbox with-font"
                           line_id="<?= $table_row[$key_column] ?>" value="<?= $table_row[$key_column] ?>"/>
                    <label for="box4" class="pdg_column_checkbox_label"></label>
                </td>
                <td class="edit_cell">
                    <button type="button" class="pdg_button_edit" line_id="<?= $table_row[$key_column] ?>"><i
                                class="fa fa-pencil" aria-hidden="true"></i></button>
                </td>
                <td class="action_cell dropdown mobile_dropdown">
                    <button type="button" type="button" data-toggle="dropdown" aria-haspopup="true"
                            aria-expanded="false"><i class="fa fa-cog" aria-hidden="true"></i></button>
                    <ul class="dropdown-menu">
                        <li><a line_id="<?= $table_row[$key_column] ?>" class="mobile_copy_btn">Копировать</a></li>
                        <li><a line_id="<?= $table_row[$key_column] ?>" class="mobile_del_btn">Удалить</a></li>
                    </ul>
                </td>
            </div>

            <?php
            foreach ($table_columns as $config_row) {
                if (isset($config_row['in_crud'])) {
                    $tmp_name = $config_row['name'];

                    // Update Data Cells (If it Needs)
                    if (isset($config_row['input_type'])) {
                        $config_row['value'] = $table_row[$tmp_name];
                        $config_row['table_row'] =& $table_row;
                        $table_row[$tmp_name] = $at_system->make_input("crud_view", $config_row);
                    }
                    // Change view for JOIN columns
                    if (isset ($config_row['join'])) $table_row[$tmp_name] = $table_row[$config_row['join_as']];
                    ?>

                    <td class="table_cell pdg_column_cell" line_id="<?= $table_row[$key_column] ?>">
                        <table<?php if (isset($config_row['style'])) {
                            echo ' style="' . $config_row['style'] . '"';
                        } ?>>
                            <td class="cell_title"><?= $columns_names[$tmp_name] ?></td>
                            <td>
                                <?php if (isset($config_row['crud_edit'])) { ?>
                                    <a class="crud_edit_btn" key_id="<?= $key_column ?>"
                                       line_id="<?= $table_row[$key_column] ?>" column="<?= $config_row['name'] ?>"><i
                                                class="fa fa-pencil" aria-hidden="true"></i></a>
                                <?php } ?>
                                <div class="crud_value_span" style="<?php if (isset($config_row['crud_value_span_css'])) echo $config_row['crud_value_span_css']?>"><?php if (isset($config_row['instead_name'])) $tmp_name = $config_row['instead_name'];
                        echo $table_row[$tmp_name] ?></div>
                        <!-- Суммируем значения поля sum_function-->
                        <?php if (isset($table_config['sum_function'])) {
                            foreach ($sum as $key => $value) {
                                if($key == $tmp_name) $sum[$key] += (float)$table_row[$tmp_name];
                            }
                        }
                        /*avg*/
                        if (isset($table_config['avg_function'])) {
                            foreach ($sum_avg as $key => $value) {
                                if($key == $tmp_name) {$sum_avg[$key] += (float)$table_row[$tmp_name]; $qnt[$key]++;}
                            }
                        }

                        ?>

                            </td>
                        </table>
                    </td>

                <?php }
            } ?>


            <td class="status_cell pdg_column_cell" line_id="<?= $table_row[$key_column] ?>">
                <?php if (!isset($table_config['status_rel_name'])) { ?>
                    <div class="status_line"></div>
                <?php } ?>
                <a href="/inside/pdg_edit/<?= $table_name ?>/<?= $table_row[$key_column] ?>" OnClick="return false;"
                   class="btn pdg_button_edit" line_id="<?= $table_row[$key_column] ?>"><i class="fa fa-pencil-square-o"
                                                                                           aria-hidden="true"></i></a>
                <span></span>
            </td>
        </tr>

    <?php }

    /*SUM FUNCTION DESKTOP*/
    if (isset($table_config['sum_function'])) {
        echo '<tr class="mobile_view_disabled"><th>Сумма</th>';
        $mobile_ver = '';
        foreach ($table_columns as $config_row) {
            if (isset($config_row['in_crud'])) {
                $flag = false;
                foreach ($sum as $key => $value) {
                    if($config_row['name'] == $key) {
                        echo '<th>'.$value.'</th>';
                        $mobile_ver .= '<div style="display: inline-block; margin-right: 5px;">'.$config_row['text'].' : <span style="font-size: 15px; color: #426f96">'.$value.'</span></div>';
                        $flag = true;
                        break;
                    }
                }
                if(!$flag) echo '<th></th>';
            }
        }
        if(isset($table_config['status_rel_name']))
            echo '<th></th><th></th></tr>';
        else
            echo '<th></th></tr>';

        echo '<div class="mobile_sum_avg" style="display: none; padding: 5px; border: 1px solid #d8d8d8; background: #e9e9ec; font-weight: bold"><div style="display: inline-block; border-right: 2px solid #bbb9b9; padding-right: 5px; margin-right: 5px; font-size: 15px;">Сумма</div>'.$mobile_ver.'</div>';
    }
/*AVG FUNCTION DESKTOP*/
    if (isset($table_config['avg_function'])) {
        echo '<tr class="mobile_view_disabled"><th>AVG</th>';
        $mobile_ver = '';
        foreach ($table_columns as $config_row) {
            if (isset($config_row['in_crud'])) {
                $flag = false;
                foreach ($sum_avg as $key => $value) {
                    if($config_row['name'] == $key AND $config_row['name'] = $qnt[$key]) {
                        echo '<th>'.round($value/$qnt[$key], 2).'</th>';
                        $mobile_ver .= '<div style="display: inline-block; margin-right: 5px;">'.$config_row['text'].' : <span style="font-size: 15px; color: #426f96">'.round($value/$qnt[$key], 2).'</div>';
                        $flag = true;
                        break;
                    }
                }
                if(!$flag) echo '<th></th>';
            }
        }
        if(isset($table_config['status_rel_name']))
            echo '<th></th><th></th></tr>';
        else
            echo '<th></th></tr>';

        echo '<div class="mobile_sum_avg" style="display: none; margin-top: 5px; padding: 5px; border: 1px solid #d8d8d8; background: #e9e9ec; font-weight: bold"><div style="display: inline-block; border-right: 2px solid #bbb9b9; padding-right: 5px; margin-right: 5px; font-size: 15px;">AVG</div>'.$mobile_ver.'</div>';
    }

    // --------------------  Wear Columns in Columns Holders ---------------------------------------------------
    ?>
    </tbody>
</table>

<div style="clear:both;"></div>
<div style="font-size:9px; margin-top:12px;" id="debug_div">
    <?php echo "SQL:" . $sql; ?>
    <br/>
    <?php echo $debug; ?>
</div>