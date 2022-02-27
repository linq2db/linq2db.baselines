BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE `stVersions`
(
	`inId`     INT NOT NULL,
	`inIdMain` INT NOT NULL,

	CONSTRAINT `PK_stVersions` PRIMARY KEY CLUSTERED (`inId`)
)

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE `rlStatesTypesAndUserGroups`
(
	`inIdState` INT NOT NULL,
	`inIdType`  INT NOT NULL,

	CONSTRAINT `PK_rlStatesTypesAndUserGroups` PRIMARY KEY CLUSTERED (`inIdState`, `inIdType`)
)

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE `stMain`
(
	`inId`     INT NOT NULL,
	`inIdType` INT NOT NULL,

	CONSTRAINT `PK_stMain` PRIMARY KEY CLUSTERED (`inId`)
)

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`v`.`inId`,
	`r`.`inIdState`,
	`a_Main`.`inIdType`
FROM
	`stVersions` `v`
		INNER JOIN `stMain` `a_Main` ON `v`.`inIdMain` = `a_Main`.`inId`
		LEFT JOIN `rlStatesTypesAndUserGroups` `r` ON `r`.`inIdType` = `a_Main`.`inIdType`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE `stMain`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE `rlStatesTypesAndUserGroups`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE `stVersions`

