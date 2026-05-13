-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	Coalesce(GROUP_CONCAT(`t1`.`Value` ORDER BY `t1`.`PK` SEPARATOR ''), '')
FROM
	`ConcatGroupedEntity` `t1`

