BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE `AsyncDataTable`
(
	`Id` INT NOT NULL,

	CONSTRAINT `PK_AsyncDataTable` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB MySql.Official MySql

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
-- MariaDB MySql.Official MySql (asynchronously)
DECLARE @Id_1 Int32
SET     @Id_1 = 2
DECLARE @p1 Int32
SET     @p1 = 2
DECLARE @Id_2 Int32
SET     @Id_2 = 2
DECLARE @take Int32
SET     @take = 1

SELECT
	`c_1`.`Id`
FROM
	`AsyncDataTable` `c_1`
WHERE
	@Id_1 = @p1 AND `c_1`.`Id` = @Id_2
LIMIT @take

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE `AsyncDataTable`

