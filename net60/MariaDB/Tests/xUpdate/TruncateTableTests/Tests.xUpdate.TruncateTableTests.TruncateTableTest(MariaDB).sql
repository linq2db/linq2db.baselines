BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `TestTrun`

BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE `TestTrun`
(
	`ID`     INT     NOT NULL,
	`Field1` DECIMAL NOT NULL,

	CONSTRAINT `PK_TestTrun` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MariaDB MySql.Official MySql

TRUNCATE TABLE `TestTrun`

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE `TestTrun`

