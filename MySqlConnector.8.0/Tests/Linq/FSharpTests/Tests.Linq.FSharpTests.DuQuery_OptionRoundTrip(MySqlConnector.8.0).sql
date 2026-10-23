-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Key Int32
SET     @Key = 10

INSERT INTO `DuOptRow`
(
	`Id`,
	`Key`
)
VALUES
(
	@Id,
	@Key
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Key Int32
SET     @Key = NULL

INSERT INTO `DuOptRow`
(
	`Id`,
	`Key`
)
VALUES
(
	@Id,
	@Key
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`x`.`Key`
FROM
	`DuOptRow` `x`
ORDER BY
	`x`.`Id`

