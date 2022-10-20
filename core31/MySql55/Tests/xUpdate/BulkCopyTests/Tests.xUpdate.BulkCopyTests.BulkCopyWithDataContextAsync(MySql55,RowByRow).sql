BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `SimpleBulkCopyTable`

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE IF NOT EXISTS `SimpleBulkCopyTable`
(
	`Id` INT NOT NULL
)

BeforeExecute
-- MySql55 MySql.Official MySql (asynchronously)
DECLARE @Id Int32
SET     @Id = 1

INSERT INTO `SimpleBulkCopyTable`
(
	`Id`
)
VALUES
(
	@Id
)

BeforeExecute
-- MySql55 MySql.Official MySql (asynchronously)
DECLARE @Id Int32
SET     @Id = 2

INSERT INTO `SimpleBulkCopyTable`
(
	`Id`
)
VALUES
(
	@Id
)

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE IF EXISTS `SimpleBulkCopyTable`

