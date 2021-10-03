BeforeExecute
-- MySql55 MySql

CREATE TABLE `test_insert_or_replace`
(
	`id`         INT          NOT NULL,
	`name`       VARCHAR(255)     NULL,
	`created_by` VARCHAR(255)     NULL,
	`updated_by` VARCHAR(255)     NULL,

	CONSTRAINT `PK_test_insert_or_replace` PRIMARY KEY CLUSTERED (`id`)
)

BeforeExecute
-- MySql55 MySql

INSERT IGNORE INTO `test_insert_or_replace`
(
	`id`,
	`name`
)
VALUES
(
	1,
	'test'
)

BeforeExecute
-- MySql55 MySql

INSERT IGNORE INTO `test_insert_or_replace`
(
	`id`,
	`name`
)
VALUES
(
	1,
	'test'
)

BeforeExecute
-- MySql55 MySql

DROP TABLE IF EXISTS `test_insert_or_replace`

