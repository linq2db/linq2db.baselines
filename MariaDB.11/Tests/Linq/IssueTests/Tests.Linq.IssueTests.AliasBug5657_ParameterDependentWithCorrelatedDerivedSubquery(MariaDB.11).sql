-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

INSERT INTO `IssueAliasBugT1`
(
	`Id`,
	`Value`
)
VALUES
(
	1,
	10
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

INSERT INTO `IssueAliasBugT1`
(
	`Id`,
	`Value`
)
VALUES
(
	2,
	20
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

INSERT INTO `IssueAliasBugT2`
(
	`Id`,
	`OutId`,
	`Cnt`
)
VALUES
(
	1,
	1,
	3
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

INSERT INTO `IssueAliasBugT2`
(
	`Id`,
	`OutId`,
	`Cnt`
)
VALUES
(
	2,
	1,
	5
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

INSERT INTO `IssueAliasBugT2`
(
	`Id`,
	`OutId`,
	`Cnt`
)
VALUES
(
	3,
	2,
	7
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @minValue Int32
SET     @minValue = 15

SELECT
	`o`.`Id`,
	`o`.`Value`,
	(
		SELECT
			SUM(`i`.`Cnt`)
		FROM
			`IssueAliasBugT2` `i`
		WHERE
			`i`.`OutId` = `o`.`Id`
		GROUP BY
			`i`.`OutId`
		LIMIT 1
	)
FROM
	`IssueAliasBugT1` `o`
WHERE
	`o`.`Value` >= @minValue

