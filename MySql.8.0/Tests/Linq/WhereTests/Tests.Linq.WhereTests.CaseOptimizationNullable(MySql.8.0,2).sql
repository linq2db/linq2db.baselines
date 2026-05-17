-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @filterValue Int32
SET     @filterValue = 2

SELECT
	`x`.`Id`,
	`x`.`StringValue`
FROM
	`WhereWithString` `x`
WHERE
	`x`.`Id` = @filterValue

