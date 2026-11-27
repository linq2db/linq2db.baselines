-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`i`.`Id`
FROM
	`BatchItem` `i`
WHERE
	`i`.`Id` > 100
LIMIT 1

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
	(
		SELECT
			`i`.`Id`
		FROM
			`BatchItem` `i`
		WHERE
			`i`.`Id` > 100
		LIMIT 1
	) as `Item1`
