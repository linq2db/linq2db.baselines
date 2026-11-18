-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @StartedOn Datetime -- DateTime
SET     @StartedOn = '2026-01-01 10:00:00'
DECLARE @FinishedOn Datetime -- DateTime
SET     @FinishedOn = '2026-01-01 10:00:00.006'

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

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	CAST(((TimestampDiff(Microsecond, `r`.`StartedOn`, `r`.`FinishedOn`) * 10) DIV 10) % 1000 AS SIGNED)
FROM
	`EventRow` `r`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	CAST(((TimestampDiff(Microsecond, `r`.`StartedOn`, `r`.`FinishedOn`) * 10) DIV 10) % 1000 AS SIGNED)
FROM
	`EventRow` `r`
WHERE
	`r`.`Id` > 0
UNION ALL
SELECT
	CAST(((TimestampDiff(Microsecond, `r_1`.`StartedOn`, `r_1`.`FinishedOn`) * 10) DIV 10) % 1000 AS SIGNED)
FROM
	`EventRow` `r_1`
WHERE
	`r_1`.`Id` <= 0

