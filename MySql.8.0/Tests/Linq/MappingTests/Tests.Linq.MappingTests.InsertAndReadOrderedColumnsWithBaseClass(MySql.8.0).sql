-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`t1`.`event_id`,
	`t1`.`event_description`
FROM
	`OrderedColumnsDerivedRecord` `t1`
LIMIT 1

