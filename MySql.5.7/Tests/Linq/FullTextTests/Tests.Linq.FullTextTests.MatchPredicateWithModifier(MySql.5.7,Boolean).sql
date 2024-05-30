BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`r`.`id`,
	`r`.`TestField1`,
	`r`.`TestField2`
FROM
	`FullTextIndexTest` `r`
WHERE
	MATCH(`r`.`TestField1`, `r`.`TestField2`) AGAINST ('found' IN BOOLEAN MODE)
ORDER BY
	`r`.`id`

