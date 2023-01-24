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

INSERT INTO `NotNullParent`
(
	`ID`
)
VALUES
(1),
(2)

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

INSERT INTO `NotNullChild`
(
	`ParentID`
)
VALUES
(1)

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

