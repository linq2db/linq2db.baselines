BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)

SELECT DISTINCT
	`a_Child`.`ID`
FROM
	`ExtensionTable1` `r`
		LEFT JOIN `ExtensionTable2` `a_Child` ON `r`.`FK` = `a_Child`.`ID`
WHERE
	`a_Child`.`ID` IS NOT NULL

