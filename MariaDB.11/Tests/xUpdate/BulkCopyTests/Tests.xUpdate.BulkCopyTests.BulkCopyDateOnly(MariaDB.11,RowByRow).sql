-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Date Datetime -- DateTime
SET     @Date = '2021-01-01'

INSERT INTO `DateOnlyTable`
(
	`Date`
)
VALUES
(
	@Date
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`Id`,
	`t1`.`Date`
FROM
	`DateOnlyTable` `t1`
LIMIT 2

