-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

UPDATE
	`SampleClass` `t`
SET
	`t`.`VarcharValue` = (
		SELECT
			GROUP_CONCAT(`t1`.`VarcharValue` SEPARATOR ' | ')
		FROM
			(
				SELECT
					`a_Children`.`VarcharValue`,
					`a_Children`.`Id`
				FROM
					`SampleClass` `a_Children`
			) `t1`
		WHERE
			`t`.`Id` = `t1`.`Id`
	),
	`t`.`NVarcharValue` = (
		SELECT
			GROUP_CONCAT(`t1`.`VarcharValue` SEPARATOR ' | ')
		FROM
			(
				SELECT
					`a_Children`.`VarcharValue`,
					`a_Children`.`Id`
				FROM
					`SampleClass` `a_Children`
			) `t1`
		WHERE
			`t`.`Id` = `t1`.`Id`
	)

