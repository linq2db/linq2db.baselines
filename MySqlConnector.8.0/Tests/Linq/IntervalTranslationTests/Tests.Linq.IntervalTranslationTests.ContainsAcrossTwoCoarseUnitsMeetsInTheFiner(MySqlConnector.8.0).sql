-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Id Int32
SET     @Id = 1
DECLARE @InDays Int64
SET     @InDays = 2
DECLARE @InMilliseconds Int64
SET     @InMilliseconds = 172800000
DECLARE @InNanoseconds Int64
SET     @InNanoseconds = 172800000000000

INSERT INTO `UnitSpreadRow`
(
	`Id`,
	`InDays`,
	`InMilliseconds`,
	`InNanoseconds`
)
VALUES
(
	@Id,
	@InDays,
	@InMilliseconds,
	@InNanoseconds
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`r`.`Id`
FROM
	`UnitSpreadRow` `r`
WHERE
	`r`.`InDays` * 86400000 IN (
		SELECT
			`x`.`InMilliseconds`
		FROM
			`UnitSpreadRow` `x`
	)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`r`.`Id`
FROM
	`UnitSpreadRow` `r`
WHERE
	`r`.`InMilliseconds` IN (
		SELECT
			`x`.`InDays` * 86400000
		FROM
			`UnitSpreadRow` `x`
	)

