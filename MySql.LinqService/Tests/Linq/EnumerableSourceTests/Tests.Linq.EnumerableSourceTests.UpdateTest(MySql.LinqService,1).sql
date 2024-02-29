BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `TableToInsert`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `TableToInsert`
(
	`Id`    INT           NOT NULL,
	`Value` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_TableToInsert` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Value VarChar(5) -- String
SET     @Value = 'Janet'

INSERT INTO `TableToInsert`
(
	`Id`,
	`Value`
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- MySql MySql.Official MySql
DECLARE @Id Int32
SET     @Id = 3
DECLARE @Value VarChar(3) -- String
SET     @Value = 'Doe'

INSERT INTO `TableToInsert`
(
	`Id`,
	`Value`
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- MySql MySql.Official MySql

UPDATE
	`TableToInsert` `t`
		INNER JOIN (
			SELECT 2 AS `Id`, 'Janet Updated' AS `Value` FROM DUAL
			UNION ALL
			SELECT 3, 'Doe Updated' FROM DUAL) `r` ON `t`.`Id` = `r`.`Id`
SET
	`t`.`Value` = `r`.`Value`

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	`TableToInsert` `t1`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `TableToInsert`

