BeforeExecute
-- MariaDB MySql

CREATE TABLE `Issue1403Tests_1`
(
	`event_id`          INT          NOT NULL,
	`event_description` VARCHAR(255) NOT NULL,

	CONSTRAINT `PK_Issue1403Tests_1` PRIMARY KEY CLUSTERED (`event_id`)
)

BeforeExecute
-- MariaDB MySql

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

BeforeExecute
-- MariaDB MySql
DECLARE @take Int32
SET     @take = 1

SELECT
	`t1`.`event_description`,
	`t1`.`event_id`
FROM
	`Issue1403Tests_1` `t1`
LIMIT @take

BeforeExecute
-- MariaDB MySql

DROP TABLE IF EXISTS `Issue1403Tests_1`

