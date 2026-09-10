-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Id Int32
SET     @Id = 1
DECLARE @StartedOn Datetime -- DateTime
SET     @StartedOn = '1970-01-02'
DECLARE @FinishedOn Datetime -- DateTime
SET     @FinishedOn = '2045-06-05 04:03:02'

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
	TimestampDiff(Microsecond, `r`.`StartedOn`, `r`.`FinishedOn`) * 10,
	CAST(TimestampDiff(Microsecond, `r`.`StartedOn`, `r`.`FinishedOn`) * 10 AS DOUBLE) / 864000000000
FROM
	`EventRow` `r`
LIMIT 2

