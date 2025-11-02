-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	MATCH(`r`.`TestField2`) AGAINST ('found')
FROM
	`FullTextIndexTest` `r`
ORDER BY
	MATCH(`r`.`TestField2`) AGAINST ('found') DESC

