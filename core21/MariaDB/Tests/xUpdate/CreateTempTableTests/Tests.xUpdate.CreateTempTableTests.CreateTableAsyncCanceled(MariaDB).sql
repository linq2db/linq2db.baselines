BeforeExecute
-- MariaDB MySql

DROP TABLE IF EXISTS `TempTable`

BeforeExecute
-- MariaDB MySql

SELECT
	`p`.`ParentID`
FROM
	`Parent` `p`

BeforeExecute
-- MariaDB MySql (asynchronously)

CREATE TEMPORARY TABLE `TempTable`
(
	`ID` INT NOT NULL
)

BeforeExecute
-- MariaDB MySql

DROP TABLE `TempTable`

