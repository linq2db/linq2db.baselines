BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE `Issue1403Tests_3`
(
	`event_description` VARCHAR(255) NOT NULL,
	`event_id`          INT          NOT NULL,

	CONSTRAINT `PK_Issue1403Tests_3` PRIMARY KEY CLUSTERED (`event_id`)
)

BeforeExecute
-- MySql MySql.Official MySql

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
-- MySql MySql.Official MySql

DROP TABLE `Issue1403Tests_3`

