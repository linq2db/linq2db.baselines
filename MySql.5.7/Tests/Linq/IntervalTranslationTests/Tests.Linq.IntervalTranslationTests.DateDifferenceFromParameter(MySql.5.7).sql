-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @StartedOn Datetime -- DateTime
SET     @StartedOn = '2026-01-01 10:00:00'
DECLARE @FinishedOn Datetime -- DateTime
SET     @FinishedOn = '2026-01-05'

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
DECLARE @Id Int32
SET     @Id = 2
DECLARE @StartedOn Datetime -- DateTime
SET     @StartedOn = '2026-01-03'
DECLARE @FinishedOn Datetime -- DateTime
SET     @FinishedOn = '2026-01-03 20:00:00'

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
DECLARE @asOf Datetime -- DateTime
SET     @asOf = '2026-01-03 13:30:00'

SELECT
	`r`.`Id`
FROM
	`EventRow` `r`
WHERE
	CAST(TimestampDiff(Microsecond, `r`.`StartedOn`, @asOf) * 10 AS DECIMAL(29, 10)) / 36000000000 > 24

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @asOf Datetime -- DateTime
SET     @asOf = '2026-01-03 13:30:00'

SELECT
	`r`.`Id`
FROM
	`EventRow` `r`
WHERE
	CAST(TimestampDiff(Microsecond, @asOf, `r`.`FinishedOn`) * 10 AS DECIMAL(29, 10)) / 36000000000 > 24

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @asOf Datetime -- DateTime
SET     @asOf = '2026-01-03 13:30:00'

SELECT
	`r`.`Id`
FROM
	`EventRow` `r`
ORDER BY
	CAST(TimestampDiff(Microsecond, `r`.`StartedOn`, @asOf) * 10 AS DECIMAL(29, 10)) / 600000000

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @asOf Datetime -- DateTime
SET     @asOf = '2026-01-03 13:30:00'

SELECT
	CAST(TimestampDiff(Microsecond, `r`.`StartedOn`, @asOf) * 10 AS DECIMAL(29, 10)) / 864000000000,
	CAST(((TimestampDiff(Microsecond, `r`.`StartedOn`, @asOf) * 10) DIV 36000000000) % 24 AS SIGNED)
FROM
	`EventRow` `r`
WHERE
	`r`.`Id` = 1
LIMIT 2

