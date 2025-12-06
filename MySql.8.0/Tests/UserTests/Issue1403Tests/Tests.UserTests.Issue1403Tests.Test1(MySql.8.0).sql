-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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

-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`t1`.`event_id`,
	`t1`.`event_description`
FROM
	`Issue1403Tests_1` `t1`
LIMIT 1

