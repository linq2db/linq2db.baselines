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
			MAX(`g_1`.`Value`) as `Max_1`
		FROM
			`CoarseDateShapesRow` `g_1`
		GROUP BY
			`g_1`.`Id`
	) `t1`
WHERE
	`t1`.`Max_1` IN ('2026-06-01 10:00:00.500')

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	COUNT(*)
FROM
	(
		SELECT
			MAX(`g_1`.`Value`) as `Max_1`
		FROM
			`CoarseDateShapesRow` `g_1`
		GROUP BY
			`g_1`.`Id`
	) `t1`
WHERE
	`t1`.`Max_1` IN ('2026-06-01 10:00:00')

