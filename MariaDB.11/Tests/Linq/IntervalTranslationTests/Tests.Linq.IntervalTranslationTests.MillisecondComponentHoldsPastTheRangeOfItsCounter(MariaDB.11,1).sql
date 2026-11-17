-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Id Int32
SET     @Id = 1
DECLARE @StartedOn Datetime -- DateTime
SET     @StartedOn = '1970-01-02'
DECLARE @FinishedOn Datetime -- DateTime
SET     @FinishedOn = '1970-02-03 04:05:06.780'

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
DECLARE @Id Int32
SET     @Id = 2
DECLARE @StartedOn Datetime -- DateTime
SET     @StartedOn = '1970-01-02'
DECLARE @FinishedOn Datetime -- DateTime
SET     @FinishedOn = '2045-06-05 04:03:02.340'

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
DECLARE @Id Int32
SET     @Id = 3
DECLARE @StartedOn Datetime -- DateTime
SET     @StartedOn = '1970-01-02'
DECLARE @FinishedOn Datetime -- DateTime
SET     @FinishedOn = '1970-01-02 00:02:05.250'

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
	`r`.`StartedOn`,
	`r`.`FinishedOn`
FROM
	`EventRow` `r`
ORDER BY
	`r`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	CAST(((TimestampDiff(Microsecond, `r`.`StartedOn`, `r`.`FinishedOn`) * 10) DIV 10000) % 1000 AS SIGNED)
FROM
	`EventRow` `r`
ORDER BY
	`r`.`Id`

