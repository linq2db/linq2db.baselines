-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Value Datetime -- DateTime
SET     @Value = '2026-06-01 10:00:00'
DECLARE @Day Datetime -- DateTime
SET     @Day = '2026-06-01'
DECLARE @Wide Datetime -- DateTime
SET     @Wide = '2026-06-01 10:00:00'

INSERT INTO `CoarseDateShapesRow`
(
	`Id`,
	`Value`,
	`Day`,
	`Wide`
)
VALUES
(
	@Id,
	@Value,
	@Day,
	@Wide
)

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
WITH `CTE_1` (`Day_1`)
AS
(
	SELECT
		MAX(`g_1`.`Day`)
	FROM
		`CoarseDateShapesRow` `g_1`
	GROUP BY
		`g_1`.`Id`
)
SELECT
	COUNT(*)
FROM
	`CTE_1` `t1`
WHERE
	`t1`.`Day_1` < '2026-06-01 10:00:00'

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
WITH `CTE_1` (`Day_1`, `Value_1`)
AS
(
	SELECT
		MAX(`g_1`.`Day`),
		MAX(`g_1`.`Value`)
	FROM
		`CoarseDateShapesRow` `g_1`
	GROUP BY
		`g_1`.`Id`
)
SELECT
	COUNT(*)
FROM
	`CTE_1` `t1`
WHERE
	`t1`.`Value_1` < '2026-06-01 10:00:00.500'

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
WITH `CTE_1` (`Day_1`, `Value_1`)
AS
(
	SELECT
		MAX(`g_1`.`Day`),
		MAX(`g_1`.`Value`)
	FROM
		`CoarseDateShapesRow` `g_1`
	GROUP BY
		`g_1`.`Id`
)
SELECT
	COUNT(*)
FROM
	`CTE_1` `t1`
WHERE
	`t1`.`Value_1` = '2026-06-01 10:00:00.500'

