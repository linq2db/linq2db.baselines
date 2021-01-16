BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `CreateIfNotExistsTable`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `CreateIfNotExistsTable`
(
	`Id`    INT NOT NULL,
	`Value` INT NOT NULL
)

BeforeExecute
-- MySql MySql.Official MySql

INSERT INTO `CreateIfNotExistsTable`
(
	`Id`,
	`Value`
)
VALUES
(
	1,
	2
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

