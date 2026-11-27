-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
INSERT INTO `OrderedColumnsRecord`
(
	`event_id`,
	`event_description`
)
VALUES
(
	1,
	'New event'
)

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`t1`.`event_id`,
	`t1`.`event_description`
FROM
	`OrderedColumnsRecord` `t1`
LIMIT 1

