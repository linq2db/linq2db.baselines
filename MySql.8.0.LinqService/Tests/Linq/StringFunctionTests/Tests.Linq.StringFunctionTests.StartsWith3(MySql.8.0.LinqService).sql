﻿BeforeExecute
--  MySql.8.0 MySql.8.0.MySql.Data MySql80
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
	@str LIKE Concat(Replace(Replace(Replace(Replace(Replace(Replace(Replace(Replace(`p`.`FirstName`, '~', '~~'), '%', '~%'), '_', '~_'), '?', '~?'), '*', '~*'), '#', '~#'), '[', '~['), ']', '~]'), '%') ESCAPE '~'

