-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
-- Command 1
SELECT
	`t1`.`Id`,
	`t1`.`Value`,
	`t1`.`GroupId`,
	`t1`.`Name`
FROM
	`BatchItem` `t1`

-- Command 2
SELECT
	`t1`.`Item1`,
	`t1`.`c1`,
	`t1`.`Id`,
	`t1`.`GroupId`
FROM
	(
		SELECT
			1 as `c1`
	) `t2`
		LEFT JOIN (
			SELECT
				`i`.`Id` > 0 as `c1`,
				`i`.`Id`,
				`i`.`GroupId`,
				1 as `Item1`
			FROM
				`BatchItem` `i`
			WHERE
				`i`.`Id` = 1
		) `t1` ON 1=1
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`i`.`Id` > 0,
	`i`.`Id`,
	`i`.`GroupId`
FROM
	`BatchItem` `i`
WHERE
	`i`.`Id` = 1
LIMIT 2

