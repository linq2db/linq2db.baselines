﻿BeforeExecute
-- MariaDB MySql

DROP TABLE IF EXISTS `AsyncDataTable`

BeforeExecute
-- MariaDB MySql

CREATE TABLE IF NOT EXISTS `AsyncDataTable`
(
	`Id` INT NOT NULL,

	CONSTRAINT `PK_AsyncDataTable` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB MySql

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
-- MariaDB MySql (asynchronously)
DECLARE @Id_1 Int32
SET     @Id_1 = 2
DECLARE @take Int32
SET     @take = 1

SELECT
	`c_1`.`Id`
FROM
	`AsyncDataTable` `c_1`
WHERE
	`c_1`.`Id` = @Id_1
LIMIT @take

BeforeExecute
-- MariaDB MySql

DROP TABLE IF EXISTS `AsyncDataTable`

