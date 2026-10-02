-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
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

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Ticks Int64
SET     @Ticks = 36002500000

SELECT
	Date_Add(`r`.`DueOn`, Interval (CAST(@Ticks AS SIGNED) DIV 10) Microsecond)
FROM
	`OptionalDueRow` `r`
LIMIT 2

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Ticks Int64
SET     @Ticks = 36002500000

SELECT
	Date_Add(`r`.`StartedOn`, Interval (CAST(@Ticks AS SIGNED) DIV 10) Microsecond)
FROM
	`OptionalDueRow` `r`
LIMIT 2

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Ticks Int64
SET     @Ticks = 36002500000

SELECT
	Date_Sub(`r`.`DueOn`, Interval (CAST(@Ticks AS SIGNED) DIV 10) Microsecond)
FROM
	`OptionalDueRow` `r`
LIMIT 2

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	Date_Add(`r`.`StartedOn`, Interval (CAST(NULL AS SIGNED) DIV 10) Microsecond)
FROM
	`OptionalDueRow` `r`
LIMIT 2

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Ticks Int64
SET     @Ticks = 36002500000

SELECT
	`r`.`Id`
FROM
	`OptionalDueRow` `r`
WHERE
	Date_Add(`r`.`DueOn`, Interval (CAST(@Ticks AS SIGNED) DIV 10) Microsecond) > Date_Add(`r`.`StartedOn`, Interval 1 Hour)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Ticks Int64
SET     @Ticks = 36002500000

SELECT
	`r`.`Id`
FROM
	`OptionalDueRow` `r`
WHERE
	Date_Add(`r`.`StartedOn`, Interval (CAST(@Ticks AS SIGNED) DIV 10) Microsecond) < Date_Add(`r`.`StartedOn`, Interval 1 Hour)

