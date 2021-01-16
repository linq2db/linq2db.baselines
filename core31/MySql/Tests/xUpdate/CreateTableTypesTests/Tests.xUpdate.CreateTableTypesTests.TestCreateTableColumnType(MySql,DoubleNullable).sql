BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE `CreateTableTypes`
(
	`Id`             INT    NOT NULL,
	`DoubleNullable` DOUBLE     NULL
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @DoubleNullable Double
SET     @DoubleNullable = NULL

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`DoubleNullable`
)
VALUES
(
	@Id,
	@DoubleNullable
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @DoubleNullable Double
SET     @DoubleNullable = 4.1299999999999999

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`DoubleNullable`
)
VALUES
(
	@Id,
	@DoubleNullable
)

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE `CreateTableTypes`

