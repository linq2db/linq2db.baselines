BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`m_1`.`ChildID`,
	`d`.`GrandChildID`
FROM
	(
		SELECT DISTINCT
			`x`.`ChildID`
		FROM
			`GrandChild` `x`
		WHERE
			`x`.`ParentID` IN (2)
	) `m_1`
		INNER JOIN `GrandChild` `d` ON (`m_1`.`ChildID` = `d`.`ChildID` OR `m_1`.`ChildID` IS NULL AND `d`.`ChildID` IS NULL)
WHERE
	`d`.`ParentID` IN (2)

BeforeExecute
DisposeTransaction
BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`x`.`ChildID`
FROM
	`GrandChild` `x`
WHERE
	`x`.`ParentID` IN (2)
GROUP BY
	`x`.`ChildID`

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`m_1`.`ChildID`,
	`d`.`GrandChildID`
FROM
	(
		SELECT DISTINCT
			`x`.`ChildID`
		FROM
			`GrandChild` `x`
		WHERE
			`x`.`ParentID` IN (3)
	) `m_1`
		INNER JOIN `GrandChild` `d` ON (`m_1`.`ChildID` = `d`.`ChildID` OR `m_1`.`ChildID` IS NULL AND `d`.`ChildID` IS NULL)
WHERE
	`d`.`ParentID` IN (3)

BeforeExecute
DisposeTransaction
BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`x`.`ChildID`
FROM
	`GrandChild` `x`
WHERE
	`x`.`ParentID` IN (3)
GROUP BY
	`x`.`ChildID`

