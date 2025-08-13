BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

UPDATE
	`gt_s_one_target` `t2`,
	`gt_s_one` `x`
		LEFT JOIN `access_mode` `y1` ON Upper(Replace(`x`.`col3`, 'auth.', '')) = Upper(`y1`.`code`) OR `x`.`col3` IS NULL AND `y1`.`code` IS NULL
SET
	`t2`.`col1` = `x`.`col1`,
	`t2`.`col2` = `x`.`col2`,
	`t2`.`col3` = Replace(`x`.`col3`, 'auth.', ''),
	`t2`.`col4` = `x`.`col4`,
	`t2`.`col5` = CASE
		WHEN `x`.`col3` = 'empty' THEN '1'
		ELSE '0'
	END,
	`t2`.`col6` = CASE
		WHEN `x`.`col3` = 'empty' THEN ''
		ELSE CAST(`y1`.`id` AS CHAR(11))
	END
WHERE
	`x`.`id` = `t2`.`id`

