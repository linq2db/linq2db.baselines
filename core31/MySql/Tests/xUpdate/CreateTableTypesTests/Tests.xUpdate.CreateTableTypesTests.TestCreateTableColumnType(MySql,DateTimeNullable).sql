BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE `CreateTableTypes`
(
	`Id`               INT      NOT NULL,
	`DateTimeNullable` DATETIME     NULL
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @DateTimeNullable DateTime
SET     @DateTimeNullable = NULL

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`DateTimeNullable`
)
VALUES
(
	@Id,
	@DateTimeNullable
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @DateTimeNullable DateTime
SET     @DateTimeNullable = '2018-11-25 01:02:03'

INSERT INTO `CreateTableTypes`
(
	`Id`,
	`DateTimeNullable`
)
VALUES
(
	@Id,
	@DateTimeNullable
)

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE `CreateTableTypes`

