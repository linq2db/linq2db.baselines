﻿BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE `TestTable`
(
	`Id` INT NOT NULL,
	`Fd` INT     NULL,

	CONSTRAINT `PK_TestTable` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB MySql.Official MySql

/* My Test */
SELECT
	`t1`.`Id`,
	`t1`.`Fd`
FROM
	`TestTable` `t1`

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `TestTable`

