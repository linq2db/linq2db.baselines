BeforeExecute
-- MySql55 MySql

DROP TABLE IF EXISTS `TestTrun`

BeforeExecute
-- MySql55 MySql

CREATE TABLE `TestTrun`
(
	`ID`     INT     NOT NULL,
	`Field1` DECIMAL NOT NULL,

	CONSTRAINT `PK_TestTrun` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySql55 MySql

TRUNCATE TABLE `TestTrun`

BeforeExecute
-- MySql55 MySql

DROP TABLE `TestTrun`

