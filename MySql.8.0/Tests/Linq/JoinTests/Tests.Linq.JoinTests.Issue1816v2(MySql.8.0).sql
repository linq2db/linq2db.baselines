-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`v`.`inId`,
	`t`.`inIdState`,
	`a_Main`.`inIdType`
FROM
	`stVersions` `v`
		INNER JOIN `stMain` `a_Main` ON `v`.`inIdMain` = `a_Main`.`inId`
		LEFT JOIN `rlStatesTypesAndUserGroups` `t` ON `t`.`inIdType` = `a_Main`.`inIdType`

