-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

INSERT INTO `IgnoreConflictsTable`
(
	`ID`,
	`Value`
)
VALUES
(1,'original1'),
(2,'original2')

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

INSERT IGNORE INTO `IgnoreConflictsTable`
(
	`ID`,
	`Value`
)
VALUES
(1,'conflict1'),
(2,'conflict2'),
(3,'new3')

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`ID`,
	`t1`.`Value`
FROM
	`IgnoreConflictsTable` `t1`
ORDER BY
	`t1`.`ID`

