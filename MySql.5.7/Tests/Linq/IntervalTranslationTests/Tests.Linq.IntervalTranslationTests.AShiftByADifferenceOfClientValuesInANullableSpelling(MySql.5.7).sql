-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @DueOn Datetime -- DateTime
SET     @DueOn = '2026-01-01 10:00:00'
DECLARE @StartedOn Datetime -- DateTime
SET     @StartedOn = '2026-01-01 10:00:00'

INSERT INTO `OptionalDueRow`
(
	`Id`,
	`DueOn`,
	`StartedOn`
)
VALUES
(
	@Id,
	@DueOn,
	@StartedOn
)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 2
DECLARE @DueOn Datetime -- DateTime
SET     @DueOn = NULL
DECLARE @StartedOn Datetime -- DateTime
SET     @StartedOn = '2026-01-01 10:00:00'

INSERT INTO `OptionalDueRow`
(
	`Id`,
	`DueOn`,
	`StartedOn`
)
VALUES
(
	@Id,
	@DueOn,
	@StartedOn
)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 3
DECLARE @DueOn Datetime -- DateTime
SET     @DueOn = '2026-01-01 12:00:00'
DECLARE @StartedOn Datetime -- DateTime
SET     @StartedOn = '2026-01-01 10:00:00'

INSERT INTO `OptionalDueRow`
(
	`Id`,
	`DueOn`,
	`StartedOn`
)
VALUES
(
	@Id,
	@DueOn,
	@StartedOn
)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Ticks Int64
SET     @Ticks = 36002500000

SELECT
	Date_Add(`r`.`DueOn`, Interval (CAST(@Ticks AS SIGNED) DIV 10) Microsecond)
FROM
	`OptionalDueRow` `r`
WHERE
	`r`.`Id` = 1
LIMIT 2

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Ticks Int64
SET     @Ticks = 36002500000

SELECT
	Date_Add(`r`.`StartedOn`, Interval (CAST(@Ticks AS SIGNED) DIV 10) Microsecond)
FROM
	`OptionalDueRow` `r`
WHERE
	`r`.`Id` = 1
LIMIT 2

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Ticks Int64
SET     @Ticks = 36002500000

SELECT
	Date_Sub(`r`.`DueOn`, Interval (CAST(@Ticks AS SIGNED) DIV 10) Microsecond)
FROM
	`OptionalDueRow` `r`
WHERE
	`r`.`Id` = 1
LIMIT 2

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	Date_Add(`r`.`StartedOn`, Interval (CAST(NULL AS SIGNED) DIV 10) Microsecond)
FROM
	`OptionalDueRow` `r`
WHERE
	`r`.`Id` = 1
LIMIT 2

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Ticks Int64
SET     @Ticks = 36002500000

SELECT
	Date_Add(`r`.`DueOn`, Interval (CAST(@Ticks AS SIGNED) DIV 10) Microsecond)
FROM
	`OptionalDueRow` `r`
ORDER BY
	`r`.`Id`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Ticks Int64
SET     @Ticks = 36002500000

SELECT
	`r`.`Id`
FROM
	`OptionalDueRow` `r`
WHERE
	Date_Add(`r`.`DueOn`, Interval (CAST(@Ticks AS SIGNED) DIV 10) Microsecond) > Date_Add(`r`.`StartedOn`, Interval 1 Hour)
ORDER BY
	`r`.`Id`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Ticks Int64
SET     @Ticks = 36002500000

SELECT
	`r`.`Id`
FROM
	`OptionalDueRow` `r`
WHERE
	`r`.`Id` = 1 AND Date_Add(`r`.`StartedOn`, Interval (CAST(@Ticks AS SIGNED) DIV 10) Microsecond) < Date_Add(`r`.`StartedOn`, Interval 1 Hour)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Ticks Int64
SET     @Ticks = 36002500000

SELECT
	Date_Add(`r`.`StartedOn`, Interval (CAST(@Ticks AS SIGNED) DIV 10) Microsecond)
FROM
	`OptionalDueRow` `r`
WHERE
	`r`.`Id` = 1
LIMIT 2

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	Date_Add(`r`.`StartedOn`, Interval (CAST(NULL AS SIGNED) DIV 10) Microsecond)
FROM
	`OptionalDueRow` `r`
WHERE
	`r`.`Id` = 1
LIMIT 2

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Ticks Int64
SET     @Ticks = 72002500000

SELECT
	Date_Add(`r`.`StartedOn`, Interval (CAST(@Ticks AS SIGNED) DIV 10) Microsecond)
FROM
	`OptionalDueRow` `r`
WHERE
	`r`.`Id` = 1
LIMIT 2

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	Date_Add(`r`.`DueOn`, Interval ((TimestampDiff(Microsecond, `r`.`StartedOn`, `r`.`DueOn`) * 10) DIV 10) Microsecond)
FROM
	`OptionalDueRow` `r`
ORDER BY
	`r`.`Id`

