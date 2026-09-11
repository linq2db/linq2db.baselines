-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Key Int32
SET     @Key = 7

INSERT INTO `PrivateDuRow`
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
	`PrivateDuRow` `x`
ORDER BY
	`x`.`Id`

