BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `CreateIfNotExistsTable`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TEMPORARY TABLE `CreateIfNotExistsTable`
(
	`Id`    INT NOT NULL,
	`Value` INT NOT NULL
)

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `CreateIfNotExistsTable`
(
	`Id`    INT NOT NULL,
	`Value` INT NOT NULL
)

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE `CreateIfNotExistsTable`

