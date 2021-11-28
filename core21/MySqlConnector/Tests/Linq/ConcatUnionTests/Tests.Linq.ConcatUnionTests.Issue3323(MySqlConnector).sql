BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `Issue3323Table`
(
	`Id`       INT          NOT NULL,
	`FistName` VARCHAR(255)     NULL,
	`LastName` VARCHAR(255)     NULL,

	CONSTRAINT `PK_Issue3323Table` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector MySql

INSERT INTO `Issue3323Table`
(
	`Id`,
	`FistName`,
	`LastName`
)
VALUES
(
	1,
	'one',
	'two'
)

BeforeExecute
-- MySqlConnector MySql

SELECT
	`t1`.`Id`,
	Concat(`t1`.`FistName`, ' ', `t1`.`LastName`)
FROM
	`Issue3323Table` `t1`
UNION ALL
SELECT
	`t2`.`Id`,
	Concat(`t2`.`FistName`, ' ', `t2`.`LastName`)
FROM
	`Issue3323Table` `t2`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Issue3323Table`

