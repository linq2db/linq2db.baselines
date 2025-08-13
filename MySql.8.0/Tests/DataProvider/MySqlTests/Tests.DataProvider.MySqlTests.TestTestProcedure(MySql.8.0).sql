BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @param3 Int32
SET     @param3 = 123
DECLARE @param2 Int32
SET     @param2 = 5
DECLARE @param1 Int32
SET     @param1 = NULL

`TestProcedure`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`FirstName`,
	`t1`.`PersonID`,
	`t1`.`LastName`,
	`t1`.`MiddleName`,
	`t1`.`Gender`
FROM
	`Person` `t1`

