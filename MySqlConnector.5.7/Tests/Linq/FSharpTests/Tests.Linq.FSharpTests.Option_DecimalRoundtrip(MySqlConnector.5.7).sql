-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`r`.`Id`,
	`r`.`Value`
FROM
	`OptionDecimalTable` `r`
WHERE
	`r`.`Id` = 1
LIMIT 2

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`r`.`Id`,
	`r`.`Value`
FROM
	`OptionDecimalTable` `r`
WHERE
	`r`.`Id` = 2
LIMIT 2

