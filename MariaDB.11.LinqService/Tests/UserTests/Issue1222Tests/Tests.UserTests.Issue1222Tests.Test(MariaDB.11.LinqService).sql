BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `stLinks`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `stLinks`
(
	`inId`          INT           AUTO_INCREMENT NOT NULL,
	`inIdParent`    INT                          NOT NULL,
	`inIdChild`     INT                          NOT NULL,
	`inIdTypeRel`   INT                          NOT NULL,
	`inMaxQuantity` DOUBLE                           NULL,
	`inMinQuantity` DOUBLE                           NULL,
	`inIdMeasure`   INT                              NULL,
	`inIdUnit`      INT                              NULL,
	`State`         INT                              NULL,
	`dtModified`    DATETIME                     NOT NULL,
	`inIdOrgOwner`  INT                              NULL,
	`dtSynchDate`   DATETIME                         NULL,
	`stGUID`        VARCHAR(4000)                NOT NULL,

	CONSTRAINT `PK_stLinks` PRIMARY KEY CLUSTERED (`inId`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `stVersions`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `stVersions`
(
	`inId`     INT AUTO_INCREMENT NOT NULL,
	`inIdMain` INT                NOT NULL,

	CONSTRAINT `PK_stVersions` PRIMARY KEY CLUSTERED (`inId`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @parentId Int32
SET     @parentId = 111

SELECT
	`version_1`.`inIdMain`
FROM
	(
		SELECT
			`u`.`inIdChild` as `VersionId`
		FROM
			`stLinks` `u`
		WHERE
			`u`.`inIdParent` = @parentId
		UNION ALL
		SELECT
			`link_1`.`inIdParent` as `VersionId`
		FROM
			`stLinks` `link_1`
		WHERE
			`link_1`.`inIdChild` = @parentId
	) `u_1`
		INNER JOIN `stVersions` `version_1` ON `u_1`.`VersionId` = `version_1`.`inId`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `stVersions`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `stLinks`

