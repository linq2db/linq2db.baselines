-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @id1 Int32
SET     @id1 = 1

UPDATE
	`InsertFromWithConstantsTable` `r_1`
		LEFT JOIN (
			SELECT
				`r`.`Value3` as `Value1`
			FROM
				`InsertFromWithConstantsTable` `r`
			WHERE
				`r`.`Id` = @id1
			LIMIT 1
		) `t1` ON 1=1
SET
	`r_1`.`Value1` = `t1`.`Value1`,
	`r_1`.`Value2` = `t1`.`Value1`,
	`r_1`.`Value3` = 'string 1',
	`r_1`.`Value4` = 'string 1'

