BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `NotNullParent`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `NotNullParent`
(
	`ID` INT NOT NULL
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
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
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
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
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `NotNullChild`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `NotNullChild`
(
	`ParentID` INT NOT NULL
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
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
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`NotNullParent` `p`
		INNER JOIN `NotNullChild` `a_ChildInner` ON `p`.`ID` = `a_ChildInner`.`ParentID`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `NotNullChild`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `NotNullParent`

