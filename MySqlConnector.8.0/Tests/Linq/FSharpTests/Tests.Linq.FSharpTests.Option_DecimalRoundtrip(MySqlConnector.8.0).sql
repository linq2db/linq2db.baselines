-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Value NewDecimal(4, 2) -- Decimal
SET     @Value = 12.34

INSERT INTO `OptionDecimalTable`
(
	`Id`,
	`Value`
)
VALUES
(
	@Id,
	@Value
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Value NewDecimal -- Decimal
SET     @Value = NULL

INSERT INTO `OptionDecimalTable`
(
	`Id`,
	`Value`
)
VALUES
(
	@Id,
	@Value
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`r`.`Id`,
	`r`.`Value`
FROM
	`OptionDecimalTable` `r`
WHERE
	`r`.`Id` = 1
LIMIT 2

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`r`.`Id`,
	`r`.`Value`
FROM
	`OptionDecimalTable` `r`
WHERE
	`r`.`Id` = 2
LIMIT 2

