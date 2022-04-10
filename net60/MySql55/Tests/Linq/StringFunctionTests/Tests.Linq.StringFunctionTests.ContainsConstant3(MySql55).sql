BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	Count(*)
FROM
	`Person` `p`
WHERE
	`p`.`FirstName` IN ('oh', 'oh''', 'oh\\')

