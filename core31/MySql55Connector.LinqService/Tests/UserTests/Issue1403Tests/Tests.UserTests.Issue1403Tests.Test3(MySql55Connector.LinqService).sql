BeforeExecute
-- MySql55Connector MySqlConnector MySql

CREATE TABLE `Issue1403Tests_3`
(
	`event_description` VARCHAR(4000) NOT NULL,
	`event_id`          INT           NOT NULL,

	CONSTRAINT `PK_Issue1403Tests_3` PRIMARY KEY CLUSTERED (`event_id`)
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql

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
-- MySql55Connector MySqlConnector MySql

SELECT
	`t1`.`event_description`,
	`t1`.`event_id`
FROM
	`Issue1403Tests_3` `t1`
LIMIT 1

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `Issue1403Tests_3`

