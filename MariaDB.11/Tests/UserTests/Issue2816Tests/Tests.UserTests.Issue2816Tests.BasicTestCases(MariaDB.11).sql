BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue2816Table`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Issue2816Table`
(
	`Id`   INT           NOT NULL,
	`Text` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_Issue2816Table` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

INSERT INTO `Issue2816Table`
(
	`Id`,
	`Text`
)
VALUES
(0,''),
(1,'a'),
(2,' m '),
(3,' '),
(4,'  '),
(5,NULL)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`p`.`Id`,
	`p`.`Text`
FROM
	`Issue2816Table` `p`
WHERE
	`p`.`Text` IS NULL OR NOT `p`.`Text` RLIKE '[^	
                 　]'

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Text`
FROM
	`Issue2816Table` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Issue2816Table`

