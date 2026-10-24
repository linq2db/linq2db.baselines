-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	COUNT(*)
FROM
	`CoarseNullableEventRow` `r`
WHERE
	Coalesce(`r`.`FinishedOn`, `r`.`StartedOn`) < '2026-06-01 10:00:00.500'

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	COUNT(*)
FROM
	`CoarseNullableEventRow` `r`
WHERE
	'2026-06-01 10:00:00.500' > Coalesce(`r`.`FinishedOn`, `r`.`StartedOn`)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	COUNT(*)
FROM
	`CoarseNullableEventRow` `r`
WHERE
	Coalesce(`r`.`FinishedOn`, `r`.`StartedOn`) = '2026-06-01 10:00:00.500'

