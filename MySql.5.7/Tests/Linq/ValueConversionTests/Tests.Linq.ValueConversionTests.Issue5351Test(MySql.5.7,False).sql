-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Test String -- AnsiStringFixedLength
SET     @Test = NULL

UPDATE
	`Issue5351Table` `x`
SET
	`x`.`Test` = @Test
WHERE
	`x`.`Id` = 1

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`x`.`Id`,
	`x`.`Test`
FROM
	`Issue5351Table` `x`
WHERE
	`x`.`Id` = 1
LIMIT 2

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Test String(1) -- AnsiStringFixedLength
SET     @Test = 'X'

UPDATE
	`Issue5351Table` `x`
SET
	`x`.`Test` = @Test
WHERE
	`x`.`Id` = 2

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`x`.`Id`,
	`x`.`Test`
FROM
	`Issue5351Table` `x`
WHERE
	`x`.`Id` = 2
LIMIT 2

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @Test String(1) -- AnsiStringFixedLength
SET     @Test = 'X'

SELECT
	`x`.`Id`,
	`x`.`Test`
FROM
	`Issue5351Table` `x`
WHERE
	`x`.`Test` = @Test

