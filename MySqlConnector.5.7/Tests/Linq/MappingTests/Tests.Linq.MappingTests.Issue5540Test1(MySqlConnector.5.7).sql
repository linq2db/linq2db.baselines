-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Items`
FROM
	`Issue5540` `t1`

