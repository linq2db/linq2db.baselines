-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

CREATE TEMPORARY TABLE `T_53d277f1b197`
(
	`Id`   INT           NOT NULL,
	`Data` VARCHAR(4000)     NULL
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

INSERT INTO `T_53d277f1b197`
(
	`Id`,
	`Data`
)
VALUES
(20,'Data 20'),
(21,'Data 21'),
(22,'Data 22')

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`Id`,
	`t1`.`Data`
FROM
	`T_53d277f1b197` `t1`
ORDER BY
	`t1`.`Id`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

DROP TEMPORARY TABLE IF EXISTS `T_53d277f1b197`

