BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `test_insert_or_replace`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `test_insert_or_replace`
(
	`id`         INT           NOT NULL,
	`name`       VARCHAR(4000)     NULL,
	`created_by` VARCHAR(4000)     NULL,
	`updated_by` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_test_insert_or_replace` PRIMARY KEY CLUSTERED (`id`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `test_insert_or_replace`

