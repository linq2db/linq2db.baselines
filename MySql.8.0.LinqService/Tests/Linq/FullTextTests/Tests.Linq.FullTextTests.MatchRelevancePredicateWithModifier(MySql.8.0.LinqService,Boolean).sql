BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)

SELECT
	MATCH(`r`.`TestField1`, `r`.`TestField2`) AGAINST ('found' IN BOOLEAN MODE)
FROM
	`FullTextIndexTest` `r`
ORDER BY
	MATCH(`r`.`TestField1`, `r`.`TestField2`) AGAINST ('found' IN BOOLEAN MODE) DESC

