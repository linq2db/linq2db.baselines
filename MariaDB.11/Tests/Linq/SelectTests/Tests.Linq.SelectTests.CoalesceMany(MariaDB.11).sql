BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `CoalesceNullableFields`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `CoalesceNullableFields`
(
	`Id`        INT NOT NULL,
	`Nullable1` INT     NULL,
	`Nullable2` INT     NULL,
	`Nullable3` INT     NULL,

	CONSTRAINT `PK_CoalesceNullableFields` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	Coalesce(`t`.`Nullable1`, `t`.`Nullable2`, `t`.`Nullable3`, `t`.`Id`),
	Coalesce(`t`.`Nullable2`, `t`.`Nullable1`, `t`.`Nullable3`, `t`.`Id`),
	Coalesce(`t`.`Nullable2`, `t`.`Nullable3`, `t`.`Nullable1`, `t`.`Id`),
	Coalesce(`t`.`Nullable3`, `t`.`Nullable1`, `t`.`Nullable2`, `t`.`Id`),
	Coalesce(`t`.`Nullable3`, `t`.`Nullable2`, `t`.`Nullable1`, `t`.`Id`)
FROM
	`CoalesceNullableFields` `t`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Nullable1`,
	`t1`.`Nullable2`,
	`t1`.`Nullable3`
FROM
	`CoalesceNullableFields` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `CoalesceNullableFields`

