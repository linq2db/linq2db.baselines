-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	MATCH(`r`.`TestField2`) AGAINST ('found')
FROM
	`FullTextIndexTest` `r`
ORDER BY
	MATCH(`r`.`TestField2`) AGAINST ('found') DESC

