-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Id Int32
SET     @Id = 1
DECLARE @StartedOn Datetime -- DateTime
SET     @StartedOn = '2026-01-01 10:00:00'
DECLARE @FinishedOn Datetime -- DateTime
SET     @FinishedOn = '2026-01-01 12:00:00'

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

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Ticks Int64
SET     @Ticks = 36002500000

SELECT
	Date_Add(`r`.`StartedOn`, Interval (CAST(@Ticks AS SIGNED) DIV 10) Microsecond)
FROM
	`EventRow` `r`
LIMIT 2

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Ticks Int64
SET     @Ticks = 36002500000

SELECT
	Date_Sub(`r`.`FinishedOn`, Interval (CAST(@Ticks AS SIGNED) DIV 10) Microsecond)
FROM
	`EventRow` `r`
LIMIT 2

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Ticks Int64
SET     @Ticks = 36002500000

SELECT
	`r`.`Id`
FROM
	`EventRow` `r`
WHERE
	Date_Add(`r`.`StartedOn`, Interval (CAST(@Ticks AS SIGNED) DIV 10) Microsecond) < `r`.`FinishedOn`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Ticks Int64
SET     @Ticks = 36002500000

SELECT
	`r`.`Id`
FROM
	`EventRow` `r`
WHERE
	Date_Sub(`r`.`FinishedOn`, Interval (CAST(@Ticks AS SIGNED) DIV 10) Microsecond) > Date_Add(`r`.`StartedOn`, Interval 1 Hour)

