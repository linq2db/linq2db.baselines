﻿BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Issue681Table`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `Issue681Table`
(
	`ID`    INT NOT NULL,
	`Value` INT NOT NULL,

	CONSTRAINT `PK_Issue681Table` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	DATABASE()
FROM
	`LinqDataTypes` `_`
LIMIT 1

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Issue681Table2`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE `Issue681Table2`
(
	`ID`    INT NOT NULL,
	`Value` INT NOT NULL,

	CONSTRAINT `PK_Issue681Table2` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE `testdata`.`Issue681Table2`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Issue681Table`

