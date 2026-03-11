-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT DISTINCT
	Extract(year from `a_Types`.`DateTimeValue`)
FROM
	`Parent` `g_1`
		LEFT JOIN `LinqDataTypes` `a_Types` ON `g_1`.`ParentID` = `a_Types`.`ID`

