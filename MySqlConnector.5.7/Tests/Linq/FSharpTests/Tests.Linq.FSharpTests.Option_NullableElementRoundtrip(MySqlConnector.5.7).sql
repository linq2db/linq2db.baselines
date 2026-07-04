-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Value Int32
SET     @Value = 42

INSERT INTO `OptionNullableElemTable`
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
DECLARE @Value Int32
SET     @Value = NULL

INSERT INTO `OptionNullableElemTable`
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
	`OptionNullableElemTable` `r`
WHERE
	`r`.`Id` = 1
LIMIT 2

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`r`.`Id`,
	`r`.`Value`
FROM
	`OptionNullableElemTable` `r`
WHERE
	`r`.`Id` = 2
LIMIT 2

