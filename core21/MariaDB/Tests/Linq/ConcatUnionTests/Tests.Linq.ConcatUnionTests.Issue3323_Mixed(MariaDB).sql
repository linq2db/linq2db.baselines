BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE `Issue3323Table`
(
	`Id`       INT          NOT NULL,
	`FistName` VARCHAR(255)     NULL,
	`LastName` VARCHAR(255)     NULL,
	`Text`     VARCHAR(255) NOT NULL,

	CONSTRAINT `PK_Issue3323Table` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB MySqlConnector MySql

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
-- MariaDB MySqlConnector MySql

SELECT
	`r`.`Id`,
	Concat(`r`.`FistName`, ' ', `r`.`LastName`)
FROM
	`Issue3323Table` `r`
UNION ALL
SELECT
	`r_1`.`Id` + 1,
	`r_1`.`Text`
FROM
	`Issue3323Table` `r_1`

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`r`.`Id` + 1,
	`r`.`Text`
FROM
	`Issue3323Table` `r`
UNION ALL
SELECT
	`r_1`.`Id`,
	Concat(`r_1`.`FistName`, ' ', `r_1`.`LastName`)
FROM
	`Issue3323Table` `r_1`

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `Issue3323Table`

