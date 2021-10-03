BeforeExecute
-- MySql

DROP TABLE IF EXISTS `AsyncDataTable`

BeforeExecute
-- MySql

CREATE TABLE IF NOT EXISTS `AsyncDataTable`
(
	`Id` INT NOT NULL,

	CONSTRAINT `PK_AsyncDataTable` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql

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
-- MySql (asynchronously)
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
-- MySql

DROP TABLE IF EXISTS `AsyncDataTable`

