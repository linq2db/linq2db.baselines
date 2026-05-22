-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`r`.`Id`,
	`r`.`Name`,
	`r`.`Tag`
FROM
	`ContainsTempTableTestRow` `r`
WHERE
	(`r`.`Tag` IN ('tag1', 'tag2') OR `r`.`Tag` IS NULL)
ORDER BY
	`r`.`Id`

