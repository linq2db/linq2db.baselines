-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`r`.`Id`,
	`r`.`Name`,
	`r`.`Tag`
FROM
	`ContainsTempTableTestRow` `r`
WHERE
	`r`.`Id` = 1 AND `r`.`Tag` = 'tag1' OR
	`r`.`Id` = 2 AND `r`.`Tag` = 'tag2' OR
	`r`.`Id` = 3 AND `r`.`Tag` IS NULL OR
	`r`.`Id` = 4 AND `r`.`Tag` = 'tag4' OR
	`r`.`Id` = 5 AND `r`.`Tag` = 'tag5' OR
	`r`.`Id` = 6 AND `r`.`Tag` IS NULL OR
	`r`.`Id` = 7 AND `r`.`Tag` = 'tag7' OR
	`r`.`Id` = 8 AND `r`.`Tag` = 'tag8' OR
	`r`.`Id` = 9 AND `r`.`Tag` IS NULL OR
	`r`.`Id` = 10 AND `r`.`Tag` = 'tag10' OR
	`r`.`Id` = 11 AND `r`.`Tag` = 'tag11' OR
	`r`.`Id` = 12 AND `r`.`Tag` IS NULL OR
	`r`.`Id` = 13 AND `r`.`Tag` = 'tag13' OR
	`r`.`Id` = 14 AND `r`.`Tag` = 'tag14' OR
	`r`.`Id` = 15 AND `r`.`Tag` IS NULL OR
	`r`.`Id` = 16 AND `r`.`Tag` = 'tag16' OR
	`r`.`Id` = 17 AND `r`.`Tag` = 'tag17' OR
	`r`.`Id` = 18 AND `r`.`Tag` IS NULL OR
	`r`.`Id` = 19 AND `r`.`Tag` = 'tag19' OR
	`r`.`Id` = 20 AND `r`.`Tag` = 'tag20'
ORDER BY
	`r`.`Id`

