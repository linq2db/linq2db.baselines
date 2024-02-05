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
-- MySqlConnector MySql
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
-- MySqlConnector MySql

SELECT
	`a_ChildInner`.`ParentID`
FROM
	`NotNullParent` `p`
		INNER JOIN `NotNullChild` `a_ChildInner` ON `p`.`ID` = `a_ChildInner`.`ParentID`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `NotNullChild`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `NotNullParent`

