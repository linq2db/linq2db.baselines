BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`key_data_result`.`ParentID`,
	`detail`.`ChildID`,
	`detail`.`ParentID`
FROM
	(
		SELECT DISTINCT
			`_`.`ParentID`
		FROM
			`Parent` `_`
	) `key_data_result`
		INNER JOIN `Child` `detail` ON Cast(`key_data_result`.`ParentID` as SIGNED) = `detail`.`ParentID`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`_`.`ParentID`
FROM
	`Parent` `_`

