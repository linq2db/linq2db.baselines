-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	COUNT(*)
FROM
	(
		SELECT
			`g_1`.`Id`
		FROM
			`CoarseDateShapesRow` `g_1`
		GROUP BY
			`g_1`.`Id`
		HAVING
			MAX(`g_1`.`Day`) < '2026-06-01 10:00:00'
	) `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	COUNT(*)
FROM
	(
		SELECT
			`g_1`.`Id`
		FROM
			`CoarseDateShapesRow` `g_1`
		GROUP BY
			`g_1`.`Id`
		HAVING
			MIN(`g_1`.`Day`) >= '2026-06-01 10:00:00'
	) `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	COUNT(*)
FROM
	(
		SELECT
			`g_1`.`Id`
		FROM
			`CoarseDateShapesRow` `g_1`
		GROUP BY
			`g_1`.`Id`
		HAVING
			MAX(`g_1`.`Value`) < '2026-06-01 10:00:00.500'
	) `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	COUNT(*)
FROM
	(
		SELECT
			`g_1`.`Id`
		FROM
			`CoarseDateShapesRow` `g_1`
		GROUP BY
			`g_1`.`Id`
		HAVING
			MAX(`g_1`.`Value`) = '2026-06-01 10:00:00.500'
	) `t1`

