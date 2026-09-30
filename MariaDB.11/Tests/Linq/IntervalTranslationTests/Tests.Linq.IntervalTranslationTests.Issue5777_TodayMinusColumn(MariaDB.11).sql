-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`Id`
FROM
	`Issue5777Row` `r`
WHERE
	CAST(TimestampDiff(Microsecond, `r`.`ClosedOn`, '2026-09-30') * 10 AS DOUBLE) / 864000000000 > 0

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`Id`
FROM
	`Issue5777Row` `r`
WHERE
	CAST(TimestampDiff(Microsecond, `r`.`ClosedOn`, '2026-09-30') * 10 AS DOUBLE) / 36000000000 > 0

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`Id`
FROM
	`Issue5777Row` `r`
WHERE
	CAST(TimestampDiff(Microsecond, `r`.`ClosedOn`, '2026-09-30') * 10 AS DOUBLE) / 600000000 > 0

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`Id`
FROM
	`Issue5777Row` `r`
WHERE
	CAST((TimestampDiff(Microsecond, `r`.`ClosedOn`, '2026-09-30') * 10) DIV 864000000000 AS SIGNED) > 0

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`Id`
FROM
	`Issue5777Row` `r`
WHERE
	CAST(TimestampDiff(Microsecond, `r`.`ClosedOnNullable`, '2026-09-30') * 10 AS DOUBLE) / 864000000000 > 0

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`Id`
FROM
	`Issue5777Row` `r`
ORDER BY
	CAST(TimestampDiff(Microsecond, `r`.`ClosedOn`, '2026-09-30') * 10 AS DOUBLE) / 864000000000

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	CAST(TimestampDiff(Microsecond, `r`.`ClosedOn`, '2026-09-30') * 10 AS DOUBLE) / 864000000000
FROM
	`Issue5777Row` `r`
ORDER BY
	`r`.`Id`

