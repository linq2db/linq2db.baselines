-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
INSERT INTO `OrderedColumnsDerivedRecord`
(
	`event_id`,
	`event_description`
)
VALUES
(
	1,
	'New event'
)

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	`t1`.`event_id`,
	`t1`.`event_description`
FROM
	`OrderedColumnsDerivedRecord` `t1`
LIMIT 1

