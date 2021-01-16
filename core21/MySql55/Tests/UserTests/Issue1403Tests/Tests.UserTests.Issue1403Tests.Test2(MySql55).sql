BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE `Issue1403Tests_2`
(
	`event_id`          INT          NOT NULL,
	`event_description` VARCHAR(255) NOT NULL,

	CONSTRAINT `PK_Issue1403Tests_2` PRIMARY KEY CLUSTERED (`event_id`)
)

BeforeExecute
-- MySql55 MySql.Official MySql

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
-- MySql55 MySql.Official MySql

DROP TABLE `Issue1403Tests_2`

