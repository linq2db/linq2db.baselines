-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`it`.`ID`
FROM
	`DynamicParent` `it`
		INNER JOIN `DynamicChild` `a_Child` ON `it`.`ID` = `a_Child`.`ParentID`
WHERE
	`a_Child`.`ID` = 123

