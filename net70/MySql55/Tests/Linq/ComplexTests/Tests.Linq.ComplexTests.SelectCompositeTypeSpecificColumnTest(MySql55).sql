BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `User`

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE IF NOT EXISTS `User`
(
	`city`            VARCHAR(4000)     NULL,
	`user_name`       VARCHAR(4000)     NULL,
	`street`          VARCHAR(4000)     NULL,
	`building_number` INT           NOT NULL
)

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`u`.`city`
FROM
	`User` `u`

BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	`u`.`street`
FROM
	`User` `u`

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `User`

