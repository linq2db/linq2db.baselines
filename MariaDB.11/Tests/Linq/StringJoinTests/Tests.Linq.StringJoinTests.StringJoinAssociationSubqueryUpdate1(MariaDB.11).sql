-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

UPDATE
	`SampleClass` `t`
SET
	`t`.`VarcharValue` = (
		SELECT
			GROUP_CONCAT(`a_Children`.`VarcharValue` SEPARATOR ' | ') as `Result_1`
		FROM
			`SampleClass` `a_Children`
		WHERE
			`t`.`Id` = `a_Children`.`Id`
	),
	`t`.`NVarcharValue` = (
		SELECT
			GROUP_CONCAT(`a_Children`.`VarcharValue` SEPARATOR ' | ') as `Result_1`
		FROM
			`SampleClass` `a_Children`
		WHERE
			`t`.`Id` = `a_Children`.`Id`
	)

