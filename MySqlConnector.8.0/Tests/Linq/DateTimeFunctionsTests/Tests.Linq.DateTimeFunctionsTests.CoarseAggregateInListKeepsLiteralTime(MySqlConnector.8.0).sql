-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
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

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	COUNT(*)
FROM
	(
		SELECT
			MAX(`g_1`.`Value`) as `In_1`
		FROM
			`CoarseDateShapesRow` `g_1`
		GROUP BY
			`g_1`.`Id`
	) `t1`
WHERE
	`t1`.`In_1` IN ('2026-06-01 10:00:00.500')

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
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

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	CASE
		WHEN '2026-06-01 10:00:00.500' IN (
			SELECT
				MAX(`g_1`.`Value`)
			FROM
				`CoarseDateShapesRow` `g_1`
			GROUP BY
				`g_1`.`Id`
		)
			THEN 1
		ELSE 0
	END as `c1`

