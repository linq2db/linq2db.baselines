-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT Max(`Id`) FROM `KeepIdentityTable`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
INSERT INTO `KeepIdentityTable`
(
	`Id`,
	`Text`
)
VALUES
(1,'Text 1'),
(2,'Text 2')

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
INSERT INTO `KeepIdentityTable`
(
	`Text`
)
VALUES
(
	'Text 3'
)

