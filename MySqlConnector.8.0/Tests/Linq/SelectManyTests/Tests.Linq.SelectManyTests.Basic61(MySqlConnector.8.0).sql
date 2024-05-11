BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`a_Children`.`ParentID` + 1
FROM
	`Parent` `t1`
		INNER JOIN `Child` `a_Children` ON `t1`.`ParentID` = `a_Children`.`ParentID`
WHERE
	(`a_Children`.`ParentID` > 0 OR `a_Children`.`ParentID` > 1) AND
	(`a_Children`.`ParentID` > -1 OR `a_Children`.`ParentID` > 2)

