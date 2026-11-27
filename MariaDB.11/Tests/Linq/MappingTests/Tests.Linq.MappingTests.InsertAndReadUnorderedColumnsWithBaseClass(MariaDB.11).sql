-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
INSERT INTO `UnorderedColumnsDerivedRecord`
(
	`event_id`,
	`event_description`
)
VALUES
(
	1,
	'New event'
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`event_id`,
	`t1`.`event_description`
FROM
	`UnorderedColumnsDerivedRecord` `t1`
LIMIT 1

