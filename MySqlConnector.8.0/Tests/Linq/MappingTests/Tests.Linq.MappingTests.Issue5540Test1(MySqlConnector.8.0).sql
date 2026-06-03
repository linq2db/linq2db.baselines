-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Items VarChar(3) -- String
SET     @Items = 'A;B'

INSERT INTO `Issue5540`
(
	`Id`,
	`Items`
)
VALUES
(
	@Id,
	@Items
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`Id`,
	`t1`.`Items`
FROM
	`Issue5540` `t1`

