BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `NotNullParent`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `NotNullParent`
(
	`ID` INT NOT NULL
)

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `NotNullParent`
(
	`ID`
)
VALUES
(1),
(2)

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `NotNullChild`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `NotNullChild`
(
	`ParentID` INT NOT NULL
)

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `NotNullChild`
(
	`ParentID`
)
VALUES
(1)

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`a_ChildInner`.`ParentID`
FROM
	`NotNullParent` `p`
		INNER JOIN `NotNullChild` `a_ChildInner` ON `p`.`ID` = `a_ChildInner`.`ParentID`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `NotNullChild`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `NotNullParent`

