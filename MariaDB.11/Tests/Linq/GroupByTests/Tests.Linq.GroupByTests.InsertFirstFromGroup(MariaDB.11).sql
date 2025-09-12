BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE `temp_table_1`
(
	`ID`    INT           NOT NULL,
	`Value` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_temp_table_1` PRIMARY KEY CLUSTERED (`ID`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

INSERT INTO `temp_table_1`
(
	`ID`,
	`Value`
)
VALUES
(1,'Value')

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE `temp_table_2`
(
	`Value` VARCHAR(50) NOT NULL,

	CONSTRAINT `PK_temp_table_2` PRIMARY KEY CLUSTERED (`Value`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

INSERT INTO `temp_table_2`
(
	`Value`
)
SELECT
	`t1`.`Value_1`
FROM
	(
		SELECT
			`gr`.`ID`
		FROM
			`temp_table_1` `gr`
		GROUP BY
			`gr`.`ID`
	) `gr_1`
		INNER JOIN (
			SELECT
				`c_1`.`Value` as `Value_1`,
				ROW_NUMBER() OVER (PARTITION BY `c_1`.`ID` ORDER BY `c_1`.`ID`) as `rn`,
				`c_1`.`ID`
			FROM
				`temp_table_1` `c_1`
		) `t1` ON `gr_1`.`ID` = `t1`.`ID` AND `t1`.`rn` <= 1

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `temp_table_2`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `temp_table_1`

