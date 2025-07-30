BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	Lower(`p`.`Taxonomy`)
FROM
	`Doctor` `p`
WHERE
	Lower(`p`.`Taxonomy`) = 'psychiatry'

