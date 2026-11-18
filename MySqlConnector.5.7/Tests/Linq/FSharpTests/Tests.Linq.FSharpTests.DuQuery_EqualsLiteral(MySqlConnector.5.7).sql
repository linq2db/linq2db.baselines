-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Key Int32
SET     @Key = 10

INSERT INTO `DuRow`
(
	`Id`,
	`Key`
)
VALUES
(
	@Id,
	@Key
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Key Int32
SET     @Key = 20

INSERT INTO `DuRow`
(
	`Id`,
	`Key`
)
VALUES
(
	@Id,
	@Key
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Key Int32
SET     @Key = 10

SELECT
	`x`.`Id`,
	`x`.`Key`
FROM
	`DuRow` `x`
WHERE
	`x`.`Key` = @Key

