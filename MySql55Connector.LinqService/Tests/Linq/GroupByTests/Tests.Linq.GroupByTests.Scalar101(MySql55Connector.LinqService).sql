BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	Max(`ch`.`ChildID`)
FROM
	`Child` `ch`
GROUP BY
	`ch`.`ChildID`

