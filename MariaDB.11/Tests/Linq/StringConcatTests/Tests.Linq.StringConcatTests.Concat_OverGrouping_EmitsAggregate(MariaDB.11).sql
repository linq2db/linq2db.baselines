-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`g_1`.`GrpId`,
	GROUP_CONCAT(Coalesce(`g_1`.`Value`, '') ORDER BY `g_1`.`PK` SEPARATOR '')
FROM
	`ConcatGroupedEntity` `g_1`
GROUP BY
	`g_1`.`GrpId`
ORDER BY
	`g_1`.`GrpId`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`PK`,
	`t1`.`GrpId`,
	`t1`.`Value`
FROM
	`ConcatGroupedEntity` `t1`

