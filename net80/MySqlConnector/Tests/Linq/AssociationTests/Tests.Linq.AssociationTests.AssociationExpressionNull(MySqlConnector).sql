BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `NotNullParent`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `NotNullParent`
(
	`ID` INT NOT NULL
)

BeforeExecute
-- MySqlConnector MySql

INSERT INTO `NotNullParent`
(
	`ID`
)
VALUES
(1),
(2)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `NotNullChild`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `NotNullChild`
(
	`ParentID` INT NOT NULL
)

BeforeExecute
-- MySqlConnector MySql

INSERT INTO `NotNullChild`
(
	`ParentID`
)
VALUES
(1)

BeforeExecute
-- MySqlConnector MySql

SELECT
	`a_ChildOuter`.`ParentID`
FROM
	`NotNullParent` `p`
		LEFT JOIN `NotNullChild` `a_ChildOuter` ON `p`.`ID` = `a_ChildOuter`.`ParentID`
ORDER BY
	`p`.`ID`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `NotNullChild`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `NotNullParent`

