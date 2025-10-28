BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

INSERT INTO `Issue1403Tests_1`
(
	`event_id`,
	`event_description`
)
VALUES
(
	1,
	'New event'
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	`t1`.`event_id`,
	`t1`.`event_description`
FROM
	`Issue1403Tests_1` `t1`
LIMIT 1

