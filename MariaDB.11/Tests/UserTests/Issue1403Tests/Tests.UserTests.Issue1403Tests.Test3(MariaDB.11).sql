-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

INSERT INTO `Issue1403Tests_3`
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
	`Issue1403Tests_3` `t1`
LIMIT 1

