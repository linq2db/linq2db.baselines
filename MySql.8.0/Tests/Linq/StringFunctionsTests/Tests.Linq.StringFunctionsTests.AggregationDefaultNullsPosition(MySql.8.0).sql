-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	GROUP_CONCAT(`t1`.`Value2` ORDER BY (`t1`.`Value1` IS NULL), `t1`.`Value1` SEPARATOR ' -> ')
FROM
	`SampleClass` `t1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	GROUP_CONCAT(`t1`.`Value2` ORDER BY (`t1`.`Value1` IS NULL), `t1`.`Value1` SEPARATOR ' -> ')
FROM
	`SampleClass` `t1`

