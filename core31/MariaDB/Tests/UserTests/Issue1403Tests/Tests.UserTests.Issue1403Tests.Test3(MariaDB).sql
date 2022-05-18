﻿BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE `Issue1403Tests_3`
(
	`event_description` VARCHAR(255) NOT NULL,
	`event_id`          INT          NOT NULL,

	CONSTRAINT `PK_Issue1403Tests_3` PRIMARY KEY CLUSTERED (`event_id`)
)

BeforeExecute
-- MariaDB MySql.Official MySql

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
-- MariaDB MySql.Official MySql

SELECT
	`t1`.`event_description`,
	`t1`.`event_id`
FROM
	`Issue1403Tests_3` `t1`
LIMIT 1

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `Issue1403Tests_3`

