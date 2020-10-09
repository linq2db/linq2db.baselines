BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `Issue1403Tests_2`
(
	`event_id`          INT          NOT NULL,
	`event_description` VARCHAR(255) NOT NULL,

	CONSTRAINT `PK_Issue1403Tests_2` PRIMARY KEY CLUSTERED (`event_id`)
)

BeforeExecute
-- MySqlConnector MySql

INSERT INTO `Issue1403Tests_2`
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
-- MySqlConnector MySql
DECLARE @take Int32
SET     @take = 1

SELECT 
	`t1`.`event_id`, 
	`t1`.`event_description`
FROM
	`Issue1403Tests_2` `t1`
LIMIT @take

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `Issue1403Tests_2`

