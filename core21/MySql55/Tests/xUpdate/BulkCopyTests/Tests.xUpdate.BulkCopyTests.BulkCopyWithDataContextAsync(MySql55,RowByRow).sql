BeforeExecute
-- MySql55 MySql

CREATE TABLE `SimpleBulkCopyTable`
(
	`Id` INT NOT NULL
)

BeforeExecute
-- MySql55 MySql (asynchronously)
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
-- MySql55 MySql (asynchronously)
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
-- MySql55 MySql

DROP TABLE IF EXISTS `SimpleBulkCopyTable`

