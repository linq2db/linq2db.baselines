BeforeExecute
-- MySql55 MySql.Official MySql

SELECT 
	Lower(`p`.`Taxonomy`)
FROM
	`Doctor` `p`
WHERE
	Lower(`p`.`Taxonomy`) = 'psychiatry'

