-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Value Decimal(4, 2)
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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Value Decimal
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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`r`.`Id`,
	`r`.`Value`
FROM
	`OptionDecimalTable` `r`
WHERE
	`r`.`Id` = 1
LIMIT 2

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`r`.`Id`,
	`r`.`Value`
FROM
	`OptionDecimalTable` `r`
WHERE
	`r`.`Id` = 2
LIMIT 2

