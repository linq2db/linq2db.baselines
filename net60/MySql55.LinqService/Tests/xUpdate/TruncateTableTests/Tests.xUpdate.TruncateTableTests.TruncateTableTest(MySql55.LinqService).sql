BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `TestTrun`

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE `TestTrun`
(
	`ID`     INT             NOT NULL,
	`Field1` DECIMAL(29, 10) NOT NULL,

	CONSTRAINT `PK_TestTrun` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySql55 MySql.Official MySql

TRUNCATE TABLE `TestTrun`

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE `TestTrun`

