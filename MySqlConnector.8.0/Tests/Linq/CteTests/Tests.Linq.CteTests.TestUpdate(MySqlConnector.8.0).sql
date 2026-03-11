-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

WITH `CTE_1` (`ParentID`)
AS
(
	SELECT
		`c_1`.`ParentID`
	FROM
		`CteChild` `c_1`
	WHERE
		`c_1`.`ParentID` % 2 = 0
)
UPDATE
	`CteChild` `c_2`
		INNER JOIN `CTE_1` `ct` ON `ct`.`ParentID` = `c_2`.`ParentID`
SET
	`c_2`.`ParentID` = `c_2`.`ChildID`

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`c_1`.`ChildID`,
	`c_1`.`ParentID`
FROM
	`CteChild` `c_1`
WHERE
	`c_1`.`ParentID` % 2 = 0

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`c_1`.`ChildID`
FROM
	`CteChild` `c_1`
WHERE
	`c_1`.`ParentID` % 2 = 0

