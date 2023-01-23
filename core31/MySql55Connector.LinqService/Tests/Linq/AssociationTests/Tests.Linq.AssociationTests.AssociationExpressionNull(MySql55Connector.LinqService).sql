BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `NotNullParent`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `NotNullParent`
(
	`ID` INT NOT NULL
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @ID Int32
SET     @ID = 1

INSERT INTO `NotNullParent`
(
	`ID`
)
VALUES
(
	@ID
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @ID Int32
SET     @ID = 2

INSERT INTO `NotNullParent`
(
	`ID`
)
VALUES
(
	@ID
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `NotNullChild`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `NotNullChild`
(
	`ParentID` INT NOT NULL
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql
DECLARE @ParentID Int32
SET     @ParentID = 1

INSERT INTO `NotNullChild`
(
	`ParentID`
)
VALUES
(
	@ParentID
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql

SELECT
	`a_ChildOuter`.`ParentID`
FROM
	`NotNullParent` `p`
		LEFT JOIN `NotNullChild` `a_ChildOuter` ON `p`.`ID` = `a_ChildOuter`.`ParentID`
ORDER BY
	`p`.`ID`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `NotNullChild`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `NotNullParent`

