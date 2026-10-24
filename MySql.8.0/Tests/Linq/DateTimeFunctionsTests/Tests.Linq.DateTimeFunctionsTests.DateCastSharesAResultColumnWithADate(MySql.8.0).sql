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
SELECT
	CAST(`r`.`Value` AS DATE)
FROM
	`CoarseDateShapesRow` `r`
UNION ALL
SELECT
	`r_1`.`Day`
FROM
	`CoarseDateShapesRow` `r_1`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	CASE
		WHEN `r`.`Id` > 0 THEN Date(`r`.`Value`)
		ELSE CAST(`r`.`Value` AS DATE)
	END
FROM
	`CoarseDateShapesRow` `r`

