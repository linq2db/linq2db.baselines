-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	CONCAT_WS(',', `e`.`Value1`, Coalesce(`e`.`Name`, ''), `e`.`Id`)
FROM
	`JoinProbeEntity` `e`

