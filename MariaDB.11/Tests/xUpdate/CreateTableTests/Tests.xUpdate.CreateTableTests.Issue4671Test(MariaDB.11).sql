-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

CREATE TEMPORARY TABLE `Issue4671EntityTMP`
(
	`Id`    INT AUTO_INCREMENT NOT NULL,
	`Value` INT                NOT NULL,

	CONSTRAINT `PK_Issue4671EntityTMP` PRIMARY KEY CLUSTERED (`Id`)
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

INSERT INTO `Issue4671Entity`
(
	`Value`
)
VALUES
(
	1
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

INSERT INTO `Issue4671EntityTMP`
(
	`Value`
)
VALUES
(
	2
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`Issue4671Entity` `t1`
LIMIT 2

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`Issue4671EntityTMP` `t1`
LIMIT 2

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DROP TEMPORARY TABLE IF EXISTS `Issue4671EntityTMP`

