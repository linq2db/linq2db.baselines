BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `TableToInsert`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `TableToInsert`
(
	`Id`    INT           NOT NULL,
	`Value` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_TableToInsert` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

INSERT INTO `TableToInsert`
(
	`Id`,
	`Value`
)
SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	(
		SELECT 2 AS `Id`, 'Janet' AS `Value`
		UNION ALL
		SELECT 3, 'Doe') `t1`
		LEFT JOIN `TableToInsert` `t` ON `t`.`Id` = `t1`.`Id`
WHERE
	`t`.`Id` IS NULL

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

INSERT INTO `TableToInsert`
(
	`Id`,
	`Value`
)
SELECT
	`t1`.`Id`,
	`t1`.`Value`
FROM
	(
		SELECT 2 AS `Id`, 'Janet' AS `Value`
		UNION ALL
		SELECT 3, 'Doe') `t1`
		LEFT JOIN `TableToInsert` `t` ON `t`.`Id` = `t1`.`Id`
WHERE
	`t`.`Id` IS NULL

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `TableToInsert`

