BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `NotNullParent`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `NotNullParent`
(
	`ID` INT NOT NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `NotNullChild`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `NotNullChild`
(
	`ParentID` INT NOT NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	COUNT(*)
FROM
	`NotNullParent` `p`
		INNER JOIN `NotNullChild` `a_ChildInner` ON `p`.`ID` = `a_ChildInner`.`ParentID`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `NotNullChild`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `NotNullParent`

