﻿BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `AsyncDataTable`

BeforeExecute
-- MySql55Connector MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `AsyncDataTable`
(
	`Id` INT NOT NULL,

	CONSTRAINT `PK_AsyncDataTable` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql55Connector MySqlConnector MySql

INSERT INTO `AsyncDataTable`
(
	`Id`
)
VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10)

BeforeExecute
-- MySql55Connector MySqlConnector MySql (asynchronously)
DECLARE @Id Int32
SET     @Id = 2

SELECT
	Max(`c_1`.`Id`)
FROM
	`AsyncDataTable` `c_1`
WHERE
	`c_1`.`Id` > @Id

BeforeExecute
-- MySql55Connector MySqlConnector MySql

DROP TABLE IF EXISTS `AsyncDataTable`

