-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Id Int32
SET     @Id = 1
DECLARE @IntValue Int32
SET     @IntValue = 42
DECLARE @StrValue VarChar(5) -- String
SET     @StrValue = 'hello'

INSERT INTO `VOptionTable`
(
	`Id`,
	`IntValue`,
	`StrValue`
)
VALUES
(
	@Id,
	@IntValue,
	@StrValue
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Id Int32
SET     @Id = 2
DECLARE @IntValue Int32
SET     @IntValue = NULL
DECLARE @StrValue VarChar -- String
SET     @StrValue = NULL

INSERT INTO `VOptionTable`
(
	`Id`,
	`IntValue`,
	`StrValue`
)
VALUES
(
	@Id,
	@IntValue,
	@StrValue
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`r`.`Id`,
	`r`.`IntValue`,
	`r`.`StrValue`
FROM
	`VOptionTable` `r`
WHERE
	`r`.`Id` = 1
LIMIT 2

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`r`.`Id`,
	`r`.`IntValue`,
	`r`.`StrValue`
FROM
	`VOptionTable` `r`
WHERE
	`r`.`Id` = 2
LIMIT 2

