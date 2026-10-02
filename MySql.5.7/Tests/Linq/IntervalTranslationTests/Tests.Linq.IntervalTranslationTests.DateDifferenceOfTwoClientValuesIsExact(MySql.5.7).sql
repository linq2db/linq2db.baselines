-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Ticks Int64
SET     @Ticks = 1234
DECLARE @TotalMilliseconds Double
SET     @TotalMilliseconds = 0.1234

SELECT
	@Ticks + `r`.`Id`,
	@TotalMilliseconds + CAST(`r`.`Id` AS DECIMAL(29, 10))
FROM
	`EventRow` `r`
LIMIT 2

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`r`.`Id`
FROM
	`EventRow` `r`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`r`.`Id`
FROM
	`EventRow` `r`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @FinishedOn Datetime -- DateTime
SET     @FinishedOn = '2026-01-03 13:30:00'

SELECT
	`r`.`Id`
FROM
	`EventRow` `r`
WHERE
	`r`.`FinishedOn` > @FinishedOn

