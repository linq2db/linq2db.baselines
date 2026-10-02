-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`Id`
FROM
	`Issue5777Row` `r`
WHERE
	CAST(TimestampDiff(Microsecond, `r`.`OpenedOn`, `r`.`ClosedOn`) * 10 AS DOUBLE) / 864000000000 < 12

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`Id`
FROM
	`Issue5777Row` `r`
ORDER BY
	CAST(TimestampDiff(Microsecond, `r`.`OpenedOn`, `r`.`ClosedOn`) * 10 AS DOUBLE) / 36000000000

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	CAST(TimestampDiff(Microsecond, `r`.`OpenedOn`, `r`.`ClosedOn`) * 10 AS DOUBLE) / 864000000000,
	CAST(TimestampDiff(Microsecond, `r`.`OpenedOn`, `r`.`ClosedOn`) * 10 AS DOUBLE) / 36000000000,
	CAST(TimestampDiff(Microsecond, `r`.`OpenedOn`, `r`.`ClosedOn`) * 10 AS DOUBLE) / 600000000,
	CAST((TimestampDiff(Microsecond, `r`.`OpenedOn`, `r`.`ClosedOn`) * 10) DIV 864000000000 AS SIGNED),
	CAST(((TimestampDiff(Microsecond, `r`.`OpenedOn`, `r`.`ClosedOn`) * 10) DIV 36000000000) % 24 AS SIGNED)
FROM
	`Issue5777Row` `r`
WHERE
	`r`.`Id` = 1
LIMIT 2

