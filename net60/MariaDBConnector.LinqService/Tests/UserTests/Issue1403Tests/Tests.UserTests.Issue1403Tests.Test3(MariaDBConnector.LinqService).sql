BeforeExecute
-- MariaDBConnector MySqlConnector MySql

CREATE TABLE `Issue1403Tests_3`
(
	`event_description` VARCHAR(4000) NOT NULL,
	`event_id`          INT           NOT NULL,

	CONSTRAINT `PK_Issue1403Tests_3` PRIMARY KEY CLUSTERED (`event_id`)
)

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

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
-- MariaDBConnector MySqlConnector MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	`t1`.`event_description`,
	`t1`.`event_id`
FROM
	`Issue1403Tests_3` `t1`
LIMIT @take

BeforeExecute
-- MariaDBConnector MySqlConnector MySql

DROP TABLE IF EXISTS `Issue1403Tests_3`

