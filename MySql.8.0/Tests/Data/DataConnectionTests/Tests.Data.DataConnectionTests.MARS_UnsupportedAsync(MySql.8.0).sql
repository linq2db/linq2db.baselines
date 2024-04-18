BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)

SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)
DECLARE @ID Int32
SET     @ID = 1

SELECT
	`_`.`PersonID`,
	`_`.`Taxonomy`
FROM
	`Doctor` `_`
WHERE
	`_`.`PersonID` = @ID

