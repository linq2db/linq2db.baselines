﻿BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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

