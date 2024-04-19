BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`_`.`ParentID`,
	`_`.`Value1`
FROM
	`Parent` `_`
		LEFT JOIN (
			SELECT
				`r`.`Value1`
			FROM
				`Parent` `r`
			LIMIT 1
		) `t1` ON 1=1
WHERE
	`t1`.`Value1` IS NOT NULL

