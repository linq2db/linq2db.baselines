BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `TempTable`

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE IF NOT EXISTS `TempTable`
(
	`ID` INT NOT NULL,

	CONSTRAINT `PK_TempTable` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySql55 MySql.Official MySql

INSERT INTO `TempTable`
(
	`ID`
)
SELECT
	`p`.`ParentID`
FROM
	`Parent` `p`

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `TempTable`

