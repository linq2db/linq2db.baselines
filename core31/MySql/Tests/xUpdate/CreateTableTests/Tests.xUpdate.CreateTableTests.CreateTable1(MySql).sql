﻿BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `TestTable`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE `TestTable`
(
	`ID`        INT           AUTO_INCREMENT NOT NULL,
	`Field1`    VARCHAR(50)                      NULL,
	`Field2`    VARCHAR(4000)                    NULL,
	`CreatedOn` DATETIME                         NULL,

	CONSTRAINT `PK_TestTable` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`t1`.`ID`,
	`t1`.`Field1`,
	`t1`.`Field2`,
	`t1`.`CreatedOn`
FROM
	`TestTable` `t1`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE `TestTable`

