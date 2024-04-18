BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`_`.`ParentID` + `cp`.`ParentID`
FROM
	`Parent` `cp`
		CROSS JOIN `Child` `_`
WHERE
	`_`.`ParentID` + `cp`.`ParentID` > 1 AND `cp`.`ParentID` = `_`.`ParentID`

