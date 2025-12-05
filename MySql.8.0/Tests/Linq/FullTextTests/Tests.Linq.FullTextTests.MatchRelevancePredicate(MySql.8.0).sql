-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	MATCH(`r`.`TestField1`, `r`.`TestField2`) AGAINST ('found')
FROM
	`FullTextIndexTest` `r`
ORDER BY
	MATCH(`r`.`TestField1`, `r`.`TestField2`) AGAINST ('found') DESC

