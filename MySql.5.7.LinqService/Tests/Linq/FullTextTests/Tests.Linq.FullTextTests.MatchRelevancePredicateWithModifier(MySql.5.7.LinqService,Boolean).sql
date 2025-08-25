BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57 (asynchronously)

SELECT
	MATCH(`r`.`TestField1`, `r`.`TestField2`) AGAINST ('found' IN BOOLEAN MODE)
FROM
	`FullTextIndexTest` `r`
ORDER BY
	MATCH(`r`.`TestField1`, `r`.`TestField2`) AGAINST ('found' IN BOOLEAN MODE) DESC

