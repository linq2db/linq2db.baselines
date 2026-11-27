-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Items VarChar(3) -- String
SET     @Items = 'A;B'

INSERT INTO `ExpressionMethodItemsEntity`
(
	`Id`,
	`Items`
)
VALUES
(
	@Id,
	@Items
)

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`Id`,
	`t1`.`Items`
FROM
	`ExpressionMethodItemsEntity` `t1`

