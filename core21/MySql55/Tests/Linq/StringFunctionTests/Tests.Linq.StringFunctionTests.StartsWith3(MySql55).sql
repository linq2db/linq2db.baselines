BeforeExecute
-- MySql55 MySql.Official MySql
DECLARE @str VarChar(7) -- String
SET     @str = 'John123'

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	@str LIKE Concat(Replace(Replace(Replace(Replace(Replace(Replace(Replace(Replace(`p`.`FirstName`, '~', Concat('~', '~')), '%', Concat('~', '%')), '_', Concat('~', '_')), '?', Concat('~', '?')), '*', Concat('~', '*')), '#', Concat('~', '#')), '[', Concat('~', '[')), ']', Concat('~', ']')), '%') ESCAPE '~'

