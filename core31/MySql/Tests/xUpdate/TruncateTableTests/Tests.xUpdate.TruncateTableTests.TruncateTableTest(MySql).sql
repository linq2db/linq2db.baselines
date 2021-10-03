BeforeExecute
-- MySql

DROP TABLE IF EXISTS `TestTrun`

BeforeExecute
-- MySql

CREATE TABLE `TestTrun`
(
	`ID`     INT     NOT NULL,
	`Field1` DECIMAL NOT NULL,

	CONSTRAINT `PK_TestTrun` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySql

TRUNCATE TABLE `TestTrun`

BeforeExecute
-- MySql

DROP TABLE `TestTrun`

