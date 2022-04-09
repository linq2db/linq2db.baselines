BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE `Issue3323Table`
(
	`Id`       INT          NOT NULL,
	`FistName` VARCHAR(255)     NULL,
	`LastName` VARCHAR(255)     NULL,
	`Text`     VARCHAR(255) NOT NULL,

	CONSTRAINT `PK_Issue3323Table` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB MySql.Official MySql

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
-- MariaDB MySql.Official MySql

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
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `Issue3323Table`

