-- MySql.8.0 MySql.8.0.MySql.Data MySql80

UPDATE
	`SampleClass` `t`
		LEFT JOIN LATERAL (
			SELECT
				GROUP_CONCAT(Coalesce(`a_Children`.`VarcharValue`, '') SEPARATOR ', ') as `Result_1`
			FROM
				`SampleClass` `a_Children`
			WHERE
				`t`.`Id` = `a_Children`.`Id`
		) `t1` ON 1=1
SET
	`t`.`VarcharValue` = Coalesce(`t1`.`Result_1`, ''),
	`t`.`NVarcharValue` = Coalesce(`t1`.`Result_1`, '')

