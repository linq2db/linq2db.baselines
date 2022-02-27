﻿BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE `SimpleBulkCopyTable`
(
	`Id` INT NOT NULL
)

BeforeExecute
-- MySql MySql.Official MySql
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
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `SimpleBulkCopyTable`

