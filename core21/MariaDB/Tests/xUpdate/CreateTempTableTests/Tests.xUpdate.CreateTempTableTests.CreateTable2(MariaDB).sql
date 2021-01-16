BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `TempTable`

BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE IF NOT EXISTS `TempTable`
(
	`ID` INT NOT NULL
)

BeforeExecute
-- MariaDB MySql.Official MySql

INSERT INTO `TempTable`
(
	`ID`
)
SELECT
	`p`.`ParentID`
FROM
	`Parent` `p`

BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	`t`.`ID`
FROM
	`Parent` `p`
		INNER JOIN `TempTable` `t` ON `p`.`ParentID` = `t`.`ID`

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `TempTable`

