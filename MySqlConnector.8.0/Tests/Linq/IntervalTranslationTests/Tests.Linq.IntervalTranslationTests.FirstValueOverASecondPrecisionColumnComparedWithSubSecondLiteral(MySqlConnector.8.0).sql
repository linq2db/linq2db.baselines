-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Id Int32
SET     @Id = 1
DECLARE @StartedOn Datetime -- DateTime
SET     @StartedOn = '2026-06-01 10:00:00'
DECLARE @FinishedOn Datetime -- DateTime
SET     @FinishedOn = NULL

INSERT INTO `CoarseNullableEventRow`
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
DECLARE @Id Int32
SET     @Id = 2
DECLARE @StartedOn Datetime -- DateTime
SET     @StartedOn = '2026-06-01 11:00:00'
DECLARE @FinishedOn Datetime -- DateTime
SET     @FinishedOn = '2026-06-01 13:00:00'

INSERT INTO `CoarseNullableEventRow`
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
SELECT
	COUNT(*)
FROM
	(
		SELECT
			FIRST_VALUE(`r`.`StartedOn`) OVER (ORDER BY `r`.`Id` ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) as `First_1`
		FROM
			`CoarseNullableEventRow` `r`
	) `t1`
WHERE
	`t1`.`First_1` < '2026-06-01 10:00:00.500'

