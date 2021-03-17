﻿BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `stLinks`
(
	`inId`          INT          AUTO_INCREMENT NOT NULL,
	`inIdParent`    INT                         NOT NULL,
	`inIdChild`     INT                         NOT NULL,
	`inIdTypeRel`   INT                         NOT NULL,
	`inMaxQuantity` DOUBLE                          NULL,
	`inMinQuantity` DOUBLE                          NULL,
	`inIdMeasure`   INT                             NULL,
	`inIdUnit`      INT                             NULL,
	`State`         INT                             NULL,
	`dtModified`    DATETIME                    NOT NULL,
	`inIdOrgOwner`  INT                             NULL,
	`dtSynchDate`   DATETIME                        NULL,
	`stGUID`        VARCHAR(255)                NOT NULL,

	CONSTRAINT `PK_stLinks` PRIMARY KEY CLUSTERED (`inId`)
)

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `stVersions`
(
	`inId`     INT AUTO_INCREMENT NOT NULL,
	`inIdMain` INT                NOT NULL,

	CONSTRAINT `PK_stVersions` PRIMARY KEY CLUSTERED (`inId`)
)

BeforeExecute
-- MySqlConnector MySql
DECLARE @parentId Int32
SET     @parentId = 111
DECLARE @parentId_1 Int32
SET     @parentId_1 = 111

SELECT
	`version_1`.`inIdMain`
FROM
	(
		SELECT
			`link_1`.`inIdChild` as `InIdChild`,
			`link_1`.`inId` as `InId`,
			`link_1`.`inIdParent` as `InIdParent`,
			`link_1`.`inIdChild` as `InIdChild_1`,
			`link_1`.`inIdTypeRel` as `InIdTypeRel`,
			`link_1`.`inMaxQuantity` as `InMaxQuantity`,
			`link_1`.`inMinQuantity` as `InMinQuantity`,
			`link_1`.`inIdMeasure` as `InIdMeasure`,
			`link_1`.`inIdUnit` as `InIdUnit`,
			`link_1`.`State` as `State_1`,
			`link_1`.`dtModified` as `DtModified`,
			`link_1`.`inIdOrgOwner` as `InIdOrgOwner`,
			`link_1`.`dtSynchDate` as `DtSynchDate`,
			`link_1`.`stGUID` as `StGUID`
		FROM
			`stLinks` `link_1`
		WHERE
			`link_1`.`inIdParent` = @parentId
		UNION ALL
		SELECT
			`link_2`.`inIdParent` as `InIdChild`,
			`link_2`.`inId` as `InId`,
			`link_2`.`inIdParent` as `InIdParent`,
			`link_2`.`inIdChild` as `InIdChild_1`,
			`link_2`.`inIdTypeRel` as `InIdTypeRel`,
			`link_2`.`inMaxQuantity` as `InMaxQuantity`,
			`link_2`.`inMinQuantity` as `InMinQuantity`,
			`link_2`.`inIdMeasure` as `InIdMeasure`,
			`link_2`.`inIdUnit` as `InIdUnit`,
			`link_2`.`State` as `State_1`,
			`link_2`.`dtModified` as `DtModified`,
			`link_2`.`inIdOrgOwner` as `InIdOrgOwner`,
			`link_2`.`dtSynchDate` as `DtSynchDate`,
			`link_2`.`stGUID` as `StGUID`
		FROM
			`stLinks` `link_2`
		WHERE
			`link_2`.`inIdChild` = @parentId_1
	) `u`
		INNER JOIN `stVersions` `version_1` ON `u`.`InIdChild` = `version_1`.`inId`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `stVersions`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `stLinks`

