BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `NotNullParent`

BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE IF NOT EXISTS `NotNullParent`
(
	`ID` INT NOT NULL
)

BeforeExecute
-- MariaDB MySql.Official MySql
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
-- MariaDB MySql.Official MySql
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
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `NotNullChild`

BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE IF NOT EXISTS `NotNullChild`
(
	`ParentID` INT NOT NULL
)

BeforeExecute
-- MariaDB MySql.Official MySql
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
-- MariaDB MySql.Official MySql

SELECT
	Count(*)
FROM
	`NotNullParent` `p`

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `NotNullChild`

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `NotNullParent`

