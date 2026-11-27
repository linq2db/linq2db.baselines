-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`t1`.`event_id`,
	`t1`.`event_description`
FROM
	`OrderedColumnsDerivedRecord` `t1`
LIMIT 1

