BeforeExecute
-- MariaDB MySql

DROP TABLE IF EXISTS `TestTrun`

BeforeExecute
-- MariaDB MySql

CREATE TABLE `TestTrun`
(
	`ID`     INT     NOT NULL,
	`Field1` DECIMAL NOT NULL,

	CONSTRAINT `PK_TestTrun` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MariaDB MySql

TRUNCATE TABLE `TestTrun`

BeforeExecute
-- MariaDB MySql

DROP TABLE `TestTrun`

