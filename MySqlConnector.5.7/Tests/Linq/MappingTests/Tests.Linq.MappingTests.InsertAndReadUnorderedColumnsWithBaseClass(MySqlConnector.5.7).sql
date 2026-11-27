-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
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

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`t1`.`event_id`,
	`t1`.`event_description`
FROM
	`UnorderedColumnsDerivedRecord` `t1`
LIMIT 1

