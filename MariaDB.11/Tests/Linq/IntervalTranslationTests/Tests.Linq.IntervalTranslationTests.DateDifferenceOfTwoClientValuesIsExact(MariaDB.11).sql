-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Id Int32
SET     @Id = 1
DECLARE @StartedOn Datetime -- DateTime
SET     @StartedOn = '2026-01-03 13:30:00'
DECLARE @FinishedOn Datetime -- DateTime
SET     @FinishedOn = '2026-01-03 14:30:00'

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
DECLARE @Ticks Int64
SET     @Ticks = 1234
DECLARE @TotalMilliseconds Double
SET     @TotalMilliseconds = 0.1234

SELECT
	@Ticks + `r`.`Id`,
	@TotalMilliseconds + `r`.`Id`
FROM
	`EventRow` `r`
LIMIT 2

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`Id`
FROM
	`EventRow` `r`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`r`.`Id`
FROM
	`EventRow` `r`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @FinishedOn Datetime -- DateTime
SET     @FinishedOn = '2026-01-03 13:30:00'

SELECT
	`r`.`Id`
FROM
	`EventRow` `r`
WHERE
	`r`.`FinishedOn` > @FinishedOn

