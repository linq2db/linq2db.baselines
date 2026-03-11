-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

UPDATE
	`SampleClass` `t`
		LEFT JOIN LATERAL (
			SELECT
				GROUP_CONCAT(`a_Children`.`VarcharValue` SEPARATOR ' | ') as `Result_1`
			FROM
				`SampleClass` `a_Children`
			WHERE
				`t`.`Id` = `a_Children`.`Id`
		) `t1` ON 1=1
SET
	`t`.`VarcharValue` = `t1`.`Result_1`,
	`t`.`NVarcharValue` = `t1`.`Result_1`

