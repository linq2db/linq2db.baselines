BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `NC_CODE`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `NC_CODE`
(
	`HANDLE`             VARCHAR(4000)   NOT NULL,
	`CHANGE_STAMP`       DECIMAL(29, 10)     NULL,
	`SITE`               VARCHAR(18)         NULL,
	`NC_CODE`            VARCHAR(48)         NULL,
	`DESCRIPTION`        VARCHAR(120)        NULL,
	`STATUS_BO`          VARCHAR(4000)       NULL,
	`CREATED_DATE_TIME`  DATETIME            NULL,
	`MODIFIED_DATE_TIME` DATETIME            NULL,
	`NC_CATEGORY`        VARCHAR(4000)       NULL,
	`DPMO_CATEGORY_BO`   VARCHAR(4000)       NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `NC_GROUP_MEMBER`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `NC_GROUP_MEMBER`
(
	`HANDLE`               VARCHAR(4000)   NOT NULL,
	`NC_GROUP_BO`          VARCHAR(4000)       NULL,
	`NC_CODE_OR_GROUP_GBO` VARCHAR(4000)       NULL,
	`SEQUENCE`             DECIMAL(29, 10)     NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @ncCodeBo VarChar(30) -- String
SET     @ncCodeBo = 'NCCodeBO:8110,SETUP_OSCILLOSCO'

WITH `AllowedNcCode` (`NcCodeBo`, `NcCode`, `NcCodeDescription`)
AS
(
	SELECT DISTINCT
		`ncCode`.`HANDLE` as `NcCodeBo`,
		`ncCode`.`NC_CODE` as `NcCode`,
		`ncCode`.`DESCRIPTION` as `NcCodeDescription`
	FROM
		`NC_CODE` `ncCode`
			INNER JOIN `NC_GROUP_MEMBER` `ncGroupMember` ON `ncCode`.`HANDLE` = `ncGroupMember`.`NC_CODE_OR_GROUP_GBO`
	WHERE
		`ncGroupMember`.`NC_GROUP_BO` = Concat('NCGroupBO:', `ncCode`.`SITE`, ',CATAN_AUTO') OR
		`ncGroupMember`.`NC_GROUP_BO` IS NULL AND `ncCode`.`SITE` IS NULL OR
		`ncGroupMember`.`NC_GROUP_BO` = Concat('NCGroupBO:', `ncCode`.`SITE`, ',CATAN_MAN') OR
		`ncGroupMember`.`NC_GROUP_BO` IS NULL AND `ncCode`.`SITE` IS NULL OR
		`ncGroupMember`.`NC_GROUP_BO` = Concat('NCGroupBO:', `ncCode`.`SITE`, ',CATAN_ALL') OR
		`ncGroupMember`.`NC_GROUP_BO` IS NULL AND `ncCode`.`SITE` IS NULL
)
SELECT
	`item_1`.`NcCodeBo`,
	`item_1`.`NcCode`,
	`item_1`.`NcCodeDescription`
FROM
	`AllowedNcCode` `item_1`
WHERE
	`item_1`.`NcCodeBo` = @ncCodeBo

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `NC_GROUP_MEMBER`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `NC_CODE`

