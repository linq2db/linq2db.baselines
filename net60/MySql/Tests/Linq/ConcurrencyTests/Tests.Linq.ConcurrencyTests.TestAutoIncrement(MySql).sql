BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `ConcurrencyTable`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `ConcurrencyTable`
(
	`Id`    INT           NOT NULL,
	`Stamp` INT           NOT NULL,
	`Value` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_ConcurrencyTable` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp Int32
SET     @Stamp = -10
DECLARE @Value_1 VarChar(7) -- String
SET     @Value_1 = 'initial'

INSERT INTO `ConcurrencyTable`
(
	`Id`,
	`Stamp`,
	`Value`
)
VALUES
(
	@Id,
	@Stamp,
	@Value_1
)

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`t1`.`Id`,
	`t1`.`Stamp`,
	`t1`.`Value`
FROM
	`ConcurrencyTable` `t1`

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Value_1 VarChar(7) -- String
SET     @Value_1 = 'value 1'
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp Int32
SET     @Stamp = -10

UPDATE
	`ConcurrencyTable` `obj`
SET
	`obj`.`Stamp` = `obj`.`Stamp` + 1,
	`obj`.`Value` = @Value_1
WHERE
	`obj`.`Id` = @Id AND `obj`.`Stamp` = @Stamp

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`t1`.`Id`,
	`t1`.`Stamp`,
	`t1`.`Value`
FROM
	`ConcurrencyTable` `t1`

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Value_1 VarChar(7) -- String
SET     @Value_1 = 'value 2'
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp Int32
SET     @Stamp = -9

UPDATE
	`ConcurrencyTable` `obj`
SET
	`obj`.`Stamp` = `obj`.`Stamp` + 1,
	`obj`.`Value` = @Value_1
WHERE
	`obj`.`Id` = @Id AND `obj`.`Stamp` = @Stamp

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`t1`.`Id`,
	`t1`.`Stamp`,
	`t1`.`Value`
FROM
	`ConcurrencyTable` `t1`

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Value_1 VarChar(7) -- String
SET     @Value_1 = 'value 3'
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp Int32
SET     @Stamp = -9

UPDATE
	`ConcurrencyTable` `obj`
SET
	`obj`.`Stamp` = `obj`.`Stamp` + 1,
	`obj`.`Value` = @Value_1
WHERE
	`obj`.`Id` = @Id AND `obj`.`Stamp` = @Stamp

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`t1`.`Id`,
	`t1`.`Stamp`,
	`t1`.`Value`
FROM
	`ConcurrencyTable` `t1`

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp Int32
SET     @Stamp = -9

DELETE   `obj`
FROM
	`ConcurrencyTable` `obj`
WHERE
	`obj`.`Id` = @Id AND `obj`.`Stamp` = @Stamp

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`t1`.`Id`,
	`t1`.`Stamp`,
	`t1`.`Value`
FROM
	`ConcurrencyTable` `t1`

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp Int32
SET     @Stamp = -8

DELETE   `obj`
FROM
	`ConcurrencyTable` `obj`
WHERE
	`obj`.`Id` = @Id AND `obj`.`Stamp` = @Stamp

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`t1`.`Id`,
	`t1`.`Stamp`,
	`t1`.`Value`
FROM
	`ConcurrencyTable` `t1`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `ConcurrencyTable`

