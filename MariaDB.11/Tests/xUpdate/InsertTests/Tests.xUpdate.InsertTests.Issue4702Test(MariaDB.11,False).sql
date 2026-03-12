-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT Max(`Id`) FROM `Issue4702Table`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

INSERT INTO `Issue4702Table`
(
	`Id`,
	`Text`
)
VALUES
(1,'Text 1'),
(2,'Text 2')

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

INSERT INTO `Issue4702Table`
(
	`Text`
)
VALUES
(
	'Text 3'
)

