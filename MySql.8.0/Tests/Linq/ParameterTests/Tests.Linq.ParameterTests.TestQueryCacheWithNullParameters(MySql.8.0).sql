BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @id Int32
SET     @id = 0

SELECT
	Count(*)
FROM
	`Person` `t1`
WHERE
	`t1`.`PersonID` = @id

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @id Int32
SET     @id = 1

SELECT
	Count(*)
FROM
	`Person` `t1`
WHERE
	`t1`.`PersonID` = @id

