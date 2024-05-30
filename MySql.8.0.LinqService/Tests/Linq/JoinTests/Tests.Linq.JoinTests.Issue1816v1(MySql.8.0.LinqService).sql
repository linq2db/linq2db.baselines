BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `stVersions`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `stVersions`
(
	`inId`     INT NOT NULL,
	`inIdMain` INT NOT NULL,

	CONSTRAINT `PK_stVersions` PRIMARY KEY CLUSTERED (`inId`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `rlStatesTypesAndUserGroups`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `rlStatesTypesAndUserGroups`
(
	`inIdState` INT NOT NULL,
	`inIdType`  INT NOT NULL,

	CONSTRAINT `PK_rlStatesTypesAndUserGroups` PRIMARY KEY CLUSTERED (`inIdState`, `inIdType`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `stMain`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `stMain`
(
	`inId`     INT NOT NULL,
	`inIdType` INT NOT NULL,

	CONSTRAINT `PK_stMain` PRIMARY KEY CLUSTERED (`inId`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`v`.`inId`,
	`t`.`inIdState`
FROM
	`stVersions` `v`
		INNER JOIN `stMain` `a_Main` ON `v`.`inIdMain` = `a_Main`.`inId`
		LEFT JOIN `rlStatesTypesAndUserGroups` `t` ON `t`.`inIdType` = `a_Main`.`inIdType`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `stMain`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `rlStatesTypesAndUserGroups`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `stVersions`

