-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Id Int32
SET     @Id = 1
DECLARE @StartedOn Datetime -- DateTime
SET     @StartedOn = '2025-06-01 10:00:00'
DECLARE @FinishedOn Datetime -- DateTime
SET     @FinishedOn = '2025-06-01 10:00:00'

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
	COUNT(*)
FROM
	`EventRow` `r`
WHERE
	CAST(TimestampDiff(Microsecond, `r`.`StartedOn`, CURRENT_TIMESTAMP) * 10 AS DOUBLE) / 864000000000 > 1

