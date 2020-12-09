BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	`p`.`FirstName`,
	`p`.`PersonID`,
	`p`.`LastName`,
	`p`.`MiddleName`,
	`p`.`Gender`
FROM
	`Person` `p`
WHERE
	'John123' LIKE Concat(Replace(Replace(Replace(Replace(Replace(Replace(Replace(Replace(`p`.`FirstName`, '~', Concat('~', '~')), '%', Concat('~', '%')), '_', Concat('~', '_')), '?', Concat('~', '?')), '*', Concat('~', '*')), '#', Concat('~', '#')), '[', Concat('~', '[')), ']', Concat('~', ']')), '%') ESCAPE '~'

