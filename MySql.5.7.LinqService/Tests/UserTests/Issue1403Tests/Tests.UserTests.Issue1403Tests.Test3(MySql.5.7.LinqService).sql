BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Issue1403Tests_3`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `Issue1403Tests_3`
(
	`event_id`          INT           NOT NULL,
	`event_description` VARCHAR(4000) NOT NULL,

	CONSTRAINT `PK_Issue1403Tests_3` PRIMARY KEY CLUSTERED (`event_id`)
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

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

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t1`.`event_id`,
	`t1`.`event_description`
FROM
	`Issue1403Tests_3` `t1`
LIMIT 1

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `Issue1403Tests_3`

