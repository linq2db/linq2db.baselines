-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Key Int32
SET     @Key = 10
DECLARE @OptKey Int32
SET     @OptKey = 10

INSERT INTO `DuPairRow`
(
	`Id`,
	`Key`,
	`OptKey`
)
VALUES
(
	@Id,
	@Key,
	@OptKey
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Key Int32
SET     @Key = 20
DECLARE @OptKey Int32
SET     @OptKey = 21

INSERT INTO `DuPairRow`
(
	`Id`,
	`Key`,
	`OptKey`
)
VALUES
(
	@Id,
	@Key,
	@OptKey
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Id Int32
SET     @Id = 3
DECLARE @Key Int32
SET     @Key = 30
DECLARE @OptKey Int32
SET     @OptKey = NULL

INSERT INTO `DuPairRow`
(
	`Id`,
	`Key`,
	`OptKey`
)
VALUES
(
	@Id,
	@Key,
	@OptKey
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`x`.`Id`
FROM
	`DuPairRow` `x`
WHERE
	`x`.`OptKey` = `x`.`Key` OR `x`.`OptKey` IS NULL AND `x`.`Key` IS NULL

