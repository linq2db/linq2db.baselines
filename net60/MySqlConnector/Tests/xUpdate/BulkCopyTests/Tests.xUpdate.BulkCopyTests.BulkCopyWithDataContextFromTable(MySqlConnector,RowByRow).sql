﻿BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `SimpleBulkCopyTable`
(
	`Id` INT NOT NULL
)

BeforeExecute
-- MySqlConnector MySql

INSERT INTO `SimpleBulkCopyTable`
(
	`Id`
)
VALUES
(1)

BeforeExecute
-- MySqlConnector MySql

INSERT INTO `SimpleBulkCopyTable`
(
	`Id`
)
VALUES
(2)

BeforeExecute
-- MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 3

INSERT INTO `SimpleBulkCopyTable`
(
	`Id`
)
VALUES
(
	@Id
)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `SimpleBulkCopyTable`

