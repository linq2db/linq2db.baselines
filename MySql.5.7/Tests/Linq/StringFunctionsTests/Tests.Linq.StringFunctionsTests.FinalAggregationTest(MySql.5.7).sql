-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	GROUP_CONCAT(`t`.`Value1` SEPARATOR ' -> ')
FROM
	`SampleClass` `t`

