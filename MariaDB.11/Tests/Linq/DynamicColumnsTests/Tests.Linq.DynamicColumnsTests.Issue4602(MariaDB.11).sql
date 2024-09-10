BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `DynamicParent`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `DynamicParent`
(
	`ID` INT AUTO_INCREMENT NOT NULL,

	CONSTRAINT `PK_DynamicParent` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `DynamicChild`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `DynamicChild`
(
	`ID`       INT AUTO_INCREMENT NOT NULL,
	`ParentID` INT                NOT NULL,

	CONSTRAINT `PK_DynamicChild` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)

SELECT
	`it`.`ID`
FROM
	`DynamicParent` `it`
		LEFT JOIN `DynamicChild` `a_Child` ON `it`.`ID` = `a_Child`.`ParentID`
WHERE
	`a_Child`.`ID` = 123

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `DynamicChild`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `DynamicParent`

