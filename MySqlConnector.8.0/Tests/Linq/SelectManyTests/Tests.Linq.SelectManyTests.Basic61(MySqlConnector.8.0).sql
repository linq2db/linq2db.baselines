BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`_`.`ParentID` + 1
FROM
	`Parent` `cp`
		INNER JOIN `Child` `_` ON (`_`.`ParentID` > 0 OR `_`.`ParentID` > 1) AND `cp`.`ParentID` = `_`.`ParentID`
WHERE
	(`_`.`ParentID` > -1 OR `_`.`ParentID` > 2)

