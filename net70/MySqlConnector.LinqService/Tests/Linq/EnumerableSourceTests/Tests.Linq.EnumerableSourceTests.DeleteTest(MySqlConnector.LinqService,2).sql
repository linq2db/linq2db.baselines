BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `TableToInsert`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `TableToInsert`
(
	`Id`    INT           NOT NULL,
	`Value` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_TableToInsert` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 3
DECLARE @Value_1 VarChar(5) -- String
SET     @Value_1 = 'Janet'

INSERT INTO `TableToInsert`
(
	`Id`,
	`Value`
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @Id Int32
SET     @Id = 4
DECLARE @Value_1 VarChar(3) -- String
SET     @Value_1 = 'Doe'

INSERT INTO `TableToInsert`
(
	`Id`,
	`Value`
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- MySqlConnector MySql

DELETE   `t`
FROM
	`TableToInsert` `t`
		INNER JOIN (
			SELECT 3 AS `Id` FROM DUAL
			UNION ALL
			SELECT 4 FROM DUAL) `r` ON `t`.`Id` = `r`.`Id`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `TableToInsert`

