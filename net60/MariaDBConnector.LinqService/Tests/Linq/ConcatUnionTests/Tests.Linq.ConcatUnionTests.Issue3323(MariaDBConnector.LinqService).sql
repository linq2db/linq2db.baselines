﻿BeforeExecute
-- MariaDBConnector MySqlConnector MySql

CREATE TABLE `Issue3323Table`
(
	`Id`       INT           NOT NULL,
	`FistName` VARCHAR(4000)     NULL,
	`LastName` VARCHAR(4000)     NULL,
	`Text`     VARCHAR(4000) NOT NULL,

	CONSTRAINT `PK_Issue3323Table` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

INSERT INTO `Issue3323Table`
(
	`Id`,
	`FistName`,
	`LastName`,
	`Text`
)
VALUES
(
	1,
	'one',
	'two',
	'text'
)

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Text`,
	Concat(`t1`.`FistName`, ' ', `t1`.`LastName`)
FROM
	`Issue3323Table` `t1`
UNION ALL
SELECT
	`t2`.`Id`,
	`t2`.`Text`,
	Concat(`t2`.`FistName`, ' ', `t2`.`LastName`)
FROM
	`Issue3323Table` `t2`

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

DROP TABLE IF EXISTS `Issue3323Table`

