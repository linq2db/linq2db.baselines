BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE `CreateTableTypes`
(
	`Id`      INT     NOT NULL,
	`Boolean` BOOLEAN NOT NULL
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Boolean_1 UByte -- Boolean
SET     @Boolean_1 = 0

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`Boolean`
)
VALUES
(
	@Id,
	@Boolean_1
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Boolean_1 UByte -- Boolean
SET     @Boolean_1 = 1

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`Boolean`
)
VALUES
(
	@Id,
	@Boolean_1
)

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`t1`.`Id`,
	`t1`.`Boolean`
FROM
	`CreateTableTypes` `t1`
ORDER BY
	`t1`.`Id`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE `CreateTableTypes`

