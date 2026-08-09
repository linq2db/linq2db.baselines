-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Id Int32
SET     @Id = 1
DECLARE @StartedOn Datetime -- DateTime
SET     @StartedOn = '2026-01-01 10:59:00'
DECLARE @FinishedOn Datetime -- DateTime
SET     @FinishedOn = '2026-01-01 11:01:00'

INSERT INTO `EventRow`
(
	`Id`,
	`StartedOn`,
	`FinishedOn`
)
VALUES
(
	@Id,
	@StartedOn,
	@FinishedOn
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	CAST(TimestampDiff(Microsecond, `r`.`StartedOn`, `r`.`FinishedOn`) * 10 AS DOUBLE) / 600000000,
	CAST(((TimestampDiff(Microsecond, `r`.`StartedOn`, `r`.`FinishedOn`) * 10) DIV 600000000) % 60 AS SIGNED)
FROM
	`EventRow` `r`
LIMIT 2

