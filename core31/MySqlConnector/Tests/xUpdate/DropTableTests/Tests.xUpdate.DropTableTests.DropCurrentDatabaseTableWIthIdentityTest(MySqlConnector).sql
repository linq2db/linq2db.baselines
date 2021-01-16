BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `DropTableTestID`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `DropTableTestID`
(
	`ID`  INT AUTO_INCREMENT NOT NULL,
	`ID1` INT                NOT NULL,

	CONSTRAINT `PK_DropTableTestID` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySqlConnector MySql

INSERT INTO `DropTableTestID`
(
	`ID1`
)
VALUES
(
	2
)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `DropTableTestID`

