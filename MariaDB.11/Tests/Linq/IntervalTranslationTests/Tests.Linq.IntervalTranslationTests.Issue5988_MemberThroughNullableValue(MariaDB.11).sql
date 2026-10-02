-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`Id`
FROM
	`Issue5777Row` `r`
WHERE
	CAST(TimestampDiff(Microsecond, `r`.`OpenedOn`, `r`.`ClosedOnNullable`) * 10 AS DOUBLE) / 864000000000 > 0

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`Id`
FROM
	`Issue5777Row` `r`
WHERE
	CAST(TimestampDiff(Microsecond, `r`.`OpenedOn`, `r`.`ClosedOnNullable`) * 10 AS DOUBLE) / 36000000000 > 0

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`Id`
FROM
	`Issue5777Row` `r`
WHERE
	CAST(TimestampDiff(Microsecond, `r`.`ClosedOnNullable`, '2026-10-01') * 10 AS DOUBLE) / 864000000000 > 0

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	CAST(TimestampDiff(Microsecond, `r`.`OpenedOn`, `r`.`ClosedOnNullable`) * 10 AS DOUBLE) / 36000000000
FROM
	`Issue5777Row` `r`
WHERE
	`r`.`Id` = 1
LIMIT 2

