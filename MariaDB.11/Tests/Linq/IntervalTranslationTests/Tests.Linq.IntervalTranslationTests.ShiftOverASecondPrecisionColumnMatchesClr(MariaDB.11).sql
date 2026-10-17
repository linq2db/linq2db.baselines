-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Id Int32
SET     @Id = 1
DECLARE @StartedOn Datetime -- DateTime
SET     @StartedOn = '2026-06-01 10:00:00'
DECLARE @FinishedOn Datetime -- DateTime
SET     @FinishedOn = '2026-06-01 15:04:03'
DECLARE @OpenedOn Datetime -- DateTime
SET     @OpenedOn = '2026-06-01'
DECLARE @ClosedOn Datetime -- DateTime
SET     @ClosedOn = '2026-06-01'

INSERT INTO `CoarseEventRow`
(
	`Id`,
	`StartedOn`,
	`FinishedOn`,
	`OpenedOn`,
	`ClosedOn`
)
VALUES
(
	@Id,
	@StartedOn,
	@FinishedOn,
	@OpenedOn,
	@ClosedOn
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	Date_Add('2026-06-20', Interval ((TimestampDiff(Microsecond, `r`.`StartedOn`, `r`.`FinishedOn`) * 10) DIV 10) Microsecond)
FROM
	`CoarseEventRow` `r`
LIMIT 2

