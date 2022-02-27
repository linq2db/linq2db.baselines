BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE `AsyncDataTable`
(
	`Id` INT NOT NULL,

	CONSTRAINT `PK_AsyncDataTable` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql55 MySql.Official MySql

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
-- MySql55 MySql.Official MySql (asynchronously)
DECLARE @Id Int32
SET     @Id = 2

SELECT
	Min(`c_1`.`Id`)
FROM
	`AsyncDataTable` `c_1`
WHERE
	`c_1`.`Id` > @Id

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE `AsyncDataTable`

