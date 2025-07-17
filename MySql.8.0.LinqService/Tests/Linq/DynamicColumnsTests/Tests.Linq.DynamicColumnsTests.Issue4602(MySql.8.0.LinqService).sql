BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)

SELECT
	`it`.`ID`
FROM
	`DynamicParent` `it`
		INNER JOIN `DynamicChild` `a_Child` ON `it`.`ID` = `a_Child`.`ParentID`
WHERE
	`a_Child`.`ID` = 123

