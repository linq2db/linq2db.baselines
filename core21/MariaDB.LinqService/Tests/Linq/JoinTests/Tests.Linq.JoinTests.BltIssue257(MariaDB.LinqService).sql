BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	`t1`.`c1`,
	Count(*)
FROM
	(
		SELECT
			Cast(`selectParam`.`DateTimeValue` as Date) as `c1`
		FROM
			`LinqDataTypes` `selectParam`
				INNER JOIN `Parent` `p` ON `selectParam`.`ID` = `p`.`ParentID`
	) `t1`
GROUP BY
	`t1`.`c1`

