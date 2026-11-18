-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @arr Int32
SET     @arr = 3

INSERT INTO `ArrayLengthTable`
(
	`Id`,
	`Value`
)
VALUES
(
	1,
	@arr
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`ArrayLengthTable` `t1`
LIMIT 2

