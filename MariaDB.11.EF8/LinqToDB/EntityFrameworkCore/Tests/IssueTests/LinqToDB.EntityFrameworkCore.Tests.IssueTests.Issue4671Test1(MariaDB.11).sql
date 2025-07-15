-- MariaDB.10.MySqlConnector MySql

CREATE TEMPORARY TABLE `Issue4671Entity1TMP`
(
	`Id`    int AUTO_INCREMENT NOT NULL,
	`Value` int                NOT NULL,

	CONSTRAINT `PK_Issue4671Entity1TMP` PRIMARY KEY CLUSTERED (`Id`)
)



-- MariaDB.10.MySqlConnector MySql

INSERT INTO `Issue4671Entity1`
(
	`Value`
)
VALUES
(
	1
)



-- MariaDB.10.MySqlConnector MySql

INSERT INTO `Issue4671Entity1TMP`
(
	`Value`
)
VALUES
(
	2
)



-- MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`Issue4671Entity1` `t1`
LIMIT 2



-- MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`Issue4671Entity1TMP` `t1`
LIMIT 2



-- MariaDB.10.MySqlConnector MySql

DROP TEMPORARY TABLE IF EXISTS `Issue4671Entity1TMP`



