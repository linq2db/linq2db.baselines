﻿BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `TestTable`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `TestTable`
(
	`Id` INT NOT NULL,
	`Fd` INT     NULL,

	CONSTRAINT `PK_TestTable` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

/* My Test */
DELETE   `t1`
FROM
	`TestTable` `t1`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `TestTable`

