BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE `AsyncDataTable`
(
	`Id` INT NOT NULL,

	CONSTRAINT `PK_AsyncDataTable` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql MySql.Official MySql

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
-- MySql MySql.Official MySql (asynchronously)
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Id_1 Int32
SET     @Id_1 = 2
DECLARE @p1 Int32
SET     @p1 = 2
DECLARE @take Int32
SET     @take = 1

SELECT
	`c_2`.`Value_1`
FROM
	(
		SELECT
			@Id as `Id`,
			`c_1`.`Id` as `Value_1`
		FROM
			`AsyncDataTable` `c_1`
		WHERE
			`c_1`.`Id` = @Id_1
	) `c_2`
WHERE
	`c_2`.`Id` = @p1
LIMIT @take

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE `AsyncDataTable`

