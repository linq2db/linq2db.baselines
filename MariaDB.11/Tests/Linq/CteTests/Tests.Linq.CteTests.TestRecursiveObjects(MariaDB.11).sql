-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

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
		CAST(0 AS SIGNED)
	FROM
		`OrgGroup` `parent`
	UNION
	SELECT
		`t1`.`Id`,
		`t1`.`ParentId`,
		`t1`.`GroupName`,
		`parent_1`.`Depth_1` + 1
	FROM
		`OrgGroup` `t1`
			INNER JOIN `previous` `parent_1` ON `parent_1`.`OrgGroup_Id` = `t1`.`ParentId`
)
SELECT
	`wrapper`.`OrgGroup_Id`,
	`wrapper`.`OrgGroup_ParentId`,
	`wrapper`.`OrgGroup_GroupName`
FROM
	`previous` `wrapper`

