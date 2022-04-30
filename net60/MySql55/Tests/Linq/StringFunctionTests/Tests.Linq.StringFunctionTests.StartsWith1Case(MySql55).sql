BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` COLLATE utf8_bin LIKE 'Jo%' ESCAPE '~' AND
	`p`.`PersonID` = 1

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` COLLATE utf8_bin LIKE 'jo%' ESCAPE '~' AND
	`p`.`PersonID` = 1

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` COLLATE utf8_bin NOT LIKE 'Jo%' ESCAPE '~' AND
	`p`.`PersonID` = 1

