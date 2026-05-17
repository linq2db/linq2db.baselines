-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

UPDATE
	`SampleClass` `t`
SET
	`t`.`VarcharValue` = Coalesce((
		SELECT
			GROUP_CONCAT(Coalesce(`t1`.`VarcharValue`, '') SEPARATOR ', ')
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
	), ''),
	`t`.`NVarcharValue` = Coalesce((
		SELECT
			GROUP_CONCAT(Coalesce(`t1`.`VarcharValue`, '') SEPARATOR ', ')
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
	), '')

