-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	GROUP_CONCAT(`t1`.`Value1` SEPARATOR ' -> ')
FROM
	`SampleClass` `t1`

