BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

INSERT INTO `Table2`
(
	`ID`
)
SELECT
	`t`.`ID`
FROM
	`Table1` `t`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`ID`,
	`t1`.`Date`
FROM
	`Table2` `t1`

