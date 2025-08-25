BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)

UPDATE
	`gt_s_one_target` `u`,
	`gt_s_one` `x`
		LEFT JOIN `access_mode` `y1` ON Upper(Replace(`x`.`col3`, 'auth.', '')) = Upper(`y1`.`code`) OR `x`.`col3` IS NULL AND `y1`.`code` IS NULL
SET
	`u`.`col1` = `x`.`col1`,
	`u`.`col2` = `x`.`col2`,
	`u`.`col3` = Replace(`x`.`col3`, 'auth.', ''),
	`u`.`col4` = `x`.`col4`,
	`u`.`col5` = CASE
		WHEN `x`.`col3` = 'empty' THEN '1'
		ELSE '0'
	END,
	`u`.`col6` = CASE
		WHEN `x`.`col3` = 'empty' THEN ''
		ELSE CAST(`y1`.`id` AS CHAR(11))
	END
WHERE
	`x`.`id` = `u`.`id`

