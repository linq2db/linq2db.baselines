BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)

SELECT
	`p1`.`FirstName`,
	`p1`.`PersonID`,
	`p1`.`LastName`,
	`p1`.`MiddleName`,
	`p1`.`Gender`
FROM
	`Person` `p1`,
	`Person` `p2`
WHERE
	`p1`.`PersonID` = `p2`.`PersonID` AND Replace(`p1`.`FirstName`, 'J', '%') LIKE Concat(Replace(Replace(Replace(Replace(Replace(Replace(Replace(Replace(Replace(`p2`.`FirstName`, 'J', '%'), '~', '~~'), '%', '~%'), '_', '~_'), '?', '~?'), '*', '~*'), '#', '~#'), '[', '~['), ']', '~]'), '%') ESCAPE '~'

