-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @StartedOn Datetime -- DateTime
SET     @StartedOn = '2026-01-01 10:20:30'
DECLARE @FinishedOn Datetime -- DateTime
SET     @FinishedOn = '2026-01-01 10:20:30.123'

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

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`r`.`FinishedOn`
FROM
	`EventRow` `r`
LIMIT 2

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	CAST(((TimestampDiff(Microsecond, `r`.`StartedOn`, `r`.`FinishedOn`) * 10) DIV 10000) % 1000 AS SIGNED),
	CAST(((TimestampDiff(Microsecond, `r`.`StartedOn`, `r`.`FinishedOn`) * 10) DIV 10000000) % 60 AS SIGNED)
FROM
	`EventRow` `r`
LIMIT 2

