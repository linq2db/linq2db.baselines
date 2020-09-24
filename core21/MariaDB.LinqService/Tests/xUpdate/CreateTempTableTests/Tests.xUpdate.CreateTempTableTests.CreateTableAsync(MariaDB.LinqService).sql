BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `TempTable`

BeforeExecute
-- MariaDB MySql.Official MySql (asynchronously)

CREATE TABLE `TempTable`
(
	`ID` INT NOT NULL
)

BeforeExecute
-- MariaDB MySql.Official MySql (asynchronously)

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
-- MariaDB MySql.Official MySql (asynchronously)

DROP TABLE `TempTable`

