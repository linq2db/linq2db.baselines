-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

INSERT INTO `DateOnlyTable`
(
	`Date`
)
VALUES
('2021-01-01')

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`Id`,
	`t1`.`Date`
FROM
	`DateOnlyTable` `t1`
LIMIT 2

