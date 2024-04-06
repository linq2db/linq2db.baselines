﻿BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Issue681Table`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Issue681Table`
(
	`ID`    INT NOT NULL,
	`Value` INT NOT NULL,

	CONSTRAINT `PK_Issue681Table` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	DATABASE()
FROM
	`LinqDataTypes` `_`
LIMIT 1

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Issue681Table2`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE `testdata`.`Issue681Table2`
(
	`ID`    INT NOT NULL,
	`Value` INT NOT NULL,

	CONSTRAINT `PK_Issue681Table2` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Issue681Table2`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Issue681Table`

