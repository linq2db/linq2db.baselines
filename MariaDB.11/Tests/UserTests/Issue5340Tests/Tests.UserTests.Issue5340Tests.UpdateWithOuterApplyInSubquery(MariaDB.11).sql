-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

UPDATE
	`OuterTable` `t2`
		CROSS JOIN (
			SELECT
				1 as `c1`
		) `t1`
		INNER JOIN (
			SELECT
				`b`.`Field4`,
				ROW_NUMBER() OVER (PARTITION BY `b`.`Field3` ORDER BY `b`.`Field4`) as `rn`,
				`b`.`Field3`
			FROM
				`InnerTable` `b`
		) `b_1` ON `t2`.`Field2` = `b_1`.`Field3` AND `b_1`.`rn` = 1
SET
	`t2`.`Field1` = `b_1`.`Field4`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`Id`,
	`t1`.`Field1`,
	`t1`.`Field2`
FROM
	`OuterTable` `t1`
ORDER BY
	`t1`.`Id`

