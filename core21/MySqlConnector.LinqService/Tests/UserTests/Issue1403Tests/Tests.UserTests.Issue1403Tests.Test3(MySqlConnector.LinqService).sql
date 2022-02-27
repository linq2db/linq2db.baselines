BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `Issue1403Tests_3`
(
	`event_description` VARCHAR(255) NOT NULL,
	`event_id`          INT          NOT NULL,

	CONSTRAINT `PK_Issue1403Tests_3` PRIMARY KEY CLUSTERED (`event_id`)
)

BeforeExecute
-- MySqlConnector MySql

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
-- MySqlConnector MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	`t1`.`event_description`,
	`t1`.`event_id`
FROM
	`Issue1403Tests_3` `t1`
LIMIT @take

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `Issue1403Tests_3`

