-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Value Datetime -- DateTime
SET     @Value = '2026-06-01 10:00:00'
DECLARE @Day Datetime -- DateTime
SET     @Day = '2026-06-01'
DECLARE @Wide Datetime -- DateTime
SET     @Wide = '2026-06-01 10:00:00.250'

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
SELECT
	COUNT(*)
FROM
	`CoarseDateShapesRow` `r`
WHERE
	CAST(`r`.`Wide` AS DATETIME) < '2026-06-01 10:00:00.500'

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	COUNT(*)
FROM
	`CoarseDateShapesRow` `r`
WHERE
	CAST(`r`.`Wide` AS DATETIME) >= '2026-06-01 10:00:00.500'

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	COUNT(*)
FROM
	`CoarseDateShapesRow` `r`
WHERE
	CAST(`r`.`Wide` AS DATETIME) = '2026-06-01 10:00:00.500'

