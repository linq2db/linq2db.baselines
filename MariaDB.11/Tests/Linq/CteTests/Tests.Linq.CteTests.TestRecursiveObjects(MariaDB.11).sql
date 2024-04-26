BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `OrgGroup`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `OrgGroup`
(
	`Id`        INT           NOT NULL,
	`ParentId`  INT           NOT NULL,
	`GroupName` VARCHAR(4000)     NULL,

	CONSTRAINT `PK_OrgGroup` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

WITH RECURSIVE `previous`
(
	`OrgGroup_Id`,
	`OrgGroup_ParentId`,
	`OrgGroup_GroupName`,
	`Depth_1`
)
AS
(
	SELECT
		`parent`.`Id`,
		`parent`.`ParentId`,
		`parent`.`GroupName`,
		0
	FROM
		`OrgGroup` `parent`
	UNION
	SELECT
		`child`.`Id`,
		`child`.`ParentId`,
		`child`.`GroupName`,
		`parent_1`.`Depth_1` + 1
	FROM
		`OrgGroup` `child`
			INNER JOIN `previous` `parent_1` ON `parent_1`.`OrgGroup_Id` = `child`.`ParentId`
)
SELECT
	`t1`.`OrgGroup_Id`,
	`t1`.`OrgGroup_ParentId`,
	`t1`.`OrgGroup_GroupName`
FROM
	`previous` `t1`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `OrgGroup`

