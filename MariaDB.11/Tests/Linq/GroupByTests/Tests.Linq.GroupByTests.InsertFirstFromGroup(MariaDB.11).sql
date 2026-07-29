-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
CREATE TABLE `temp_table_1`
(
	`ID`    INT           NOT NULL,
	`Value` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_temp_table_1` PRIMARY KEY CLUSTERED (`ID`)
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
INSERT INTO `temp_table_1`
(
	`ID`,
	`Value`
)
VALUES
(1,'Value')

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
CREATE TABLE `temp_table_2`
(
	`Value` VARCHAR(50) NOT NULL,

	CONSTRAINT `PK_temp_table_2` PRIMARY KEY CLUSTERED (`Value`)
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
INSERT INTO `temp_table_2`
(
	`Value`
)
SELECT
	(
		SELECT
			`c_1`.`Value`
		FROM
			`temp_table_1` `c_1`
		WHERE
			`gr`.`ID` = `c_1`.`ID`
		LIMIT 1
	)
FROM
	`temp_table_1` `gr`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DROP TABLE IF EXISTS `temp_table_2`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DROP TABLE IF EXISTS `temp_table_1`

