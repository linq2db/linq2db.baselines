BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `CoalesceNullableFields`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `CoalesceNullableFields`
(
	`Id`        INT NOT NULL,
	`Nullable1` INT     NULL,
	`Nullable2` INT     NULL,
	`Nullable3` INT     NULL,

	CONSTRAINT `PK_CoalesceNullableFields` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

INSERT INTO `CoalesceNullableFields`
(
	`Id`,
	`Nullable1`,
	`Nullable2`,
	`Nullable3`
)
VALUES
(1,10,NULL,NULL),
(2,NULL,20,NULL),
(3,NULL,NULL,30),
(4,NULL,NULL,NULL)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	Coalesce(`t`.`Nullable1`, `t`.`Nullable2`, `t`.`Nullable3`, `t`.`Id`),
	Coalesce(`t`.`Nullable2`, `t`.`Nullable1`, `t`.`Nullable3`, `t`.`Id`),
	Coalesce(`t`.`Nullable2`, `t`.`Nullable3`, `t`.`Nullable1`, `t`.`Id`),
	Coalesce(`t`.`Nullable3`, `t`.`Nullable1`, `t`.`Nullable2`, `t`.`Id`),
	Coalesce(`t`.`Nullable3`, `t`.`Nullable2`, `t`.`Nullable1`, `t`.`Id`)
FROM
	`CoalesceNullableFields` `t`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`Id`,
	`t1`.`Nullable1`,
	`t1`.`Nullable2`,
	`t1`.`Nullable3`
FROM
	`CoalesceNullableFields` `t1`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `CoalesceNullableFields`

