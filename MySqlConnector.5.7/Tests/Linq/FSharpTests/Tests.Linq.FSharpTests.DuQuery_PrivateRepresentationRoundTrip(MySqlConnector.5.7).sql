-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`x`.`Key`
FROM
	`PrivateDuRow` `x`
ORDER BY
	`x`.`Id`

