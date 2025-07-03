BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @ncCodeBo Varchar2(30) -- String
SET     @ncCodeBo = 'NCCodeBO:8110,SETUP_OSCILLOSCO'

WITH "AllowedNcCode" ("NcCodeBo", "NcCode", "NcCodeDescription")
AS
(
	SELECT DISTINCT
		ncCode.HANDLE as "NcCodeBo",
		ncCode.NC_CODE as "NcCode",
		ncCode.DESCRIPTION as "NcCodeDescription"
	FROM
		NC_CODE ncCode
			INNER JOIN NC_GROUP_MEMBER ncGroupMember ON ncCode.HANDLE = ncGroupMember.NC_CODE_OR_GROUP_GBO
	WHERE
		ncGroupMember.NC_GROUP_BO = 'NCGroupBO:' || ncCode.SITE || ',CATAN_AUTO' OR
		ncGroupMember.NC_GROUP_BO IS NULL AND ncCode.SITE IS NULL OR
		ncGroupMember.NC_GROUP_BO = 'NCGroupBO:' || ncCode.SITE || ',CATAN_MAN' OR
		ncGroupMember.NC_GROUP_BO = 'NCGroupBO:' || ncCode.SITE || ',CATAN_ALL'
)
SELECT
	item_1."NcCodeBo",
	item_1."NcCode",
	item_1."NcCodeDescription"
FROM
	"AllowedNcCode" item_1
WHERE
	item_1."NcCodeBo" = :ncCodeBo

