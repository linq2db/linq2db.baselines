BeforeExecute
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

DROP TABLE `stVersions`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `stLinks`

