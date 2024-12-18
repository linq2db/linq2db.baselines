BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [NC_CODE]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [NC_CODE]
(
	[HANDLE]             NVarChar(255) NOT NULL,
	[CHANGE_STAMP]       Decimal           NULL,
	[SITE]               NVarChar(18)      NULL,
	[NC_CODE]            NVarChar(48)      NULL,
	[DESCRIPTION]        NVarChar(120)     NULL,
	[STATUS_BO]          NVarChar(255)     NULL,
	[CREATED_DATE_TIME]  DateTime2         NULL,
	[MODIFIED_DATE_TIME] DateTime2         NULL,
	[NC_CATEGORY]        NVarChar(255)     NULL,
	[DPMO_CATEGORY_BO]   NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [NC_GROUP_MEMBER]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [NC_GROUP_MEMBER]
(
	[HANDLE]               NVarChar(255) NOT NULL,
	[NC_GROUP_BO]          NVarChar(255)     NULL,
	[NC_CODE_OR_GROUP_GBO] NVarChar(255)     NULL,
	[SEQUENCE]             Decimal           NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @ncCodeBo NVarChar(30) -- String
SET     @ncCodeBo = 'NCCodeBO:8110,SETUP_OSCILLOSCO'

WITH [AllowedNcCode] ([NcCodeBo], [NcCode], [NcCodeDescription])
AS
(
	SELECT DISTINCT
		[ncCode].[HANDLE] as [NcCodeBo],
		[ncCode].[NC_CODE] as [NcCode],
		[ncCode].[DESCRIPTION] as [NcCodeDescription]
	FROM
		[NC_CODE] [ncCode]
			INNER JOIN [NC_GROUP_MEMBER] [ncGroupMember] ON [ncCode].[HANDLE] = [ncGroupMember].[NC_CODE_OR_GROUP_GBO]
	WHERE
		[ncGroupMember].[NC_GROUP_BO] = 'NCGroupBO:' || [ncCode].[SITE] || ',CATAN_AUTO' AND [ncGroupMember].[NC_GROUP_BO] IS NOT NULL AND 'NCGroupBO:' || [ncCode].[SITE] || ',CATAN_AUTO' IS NOT NULL OR
		[ncGroupMember].[NC_GROUP_BO] IS NULL AND 'NCGroupBO:' || [ncCode].[SITE] || ',CATAN_AUTO' IS NULL OR
		[ncGroupMember].[NC_GROUP_BO] = 'NCGroupBO:' || [ncCode].[SITE] || ',CATAN_MAN' AND [ncGroupMember].[NC_GROUP_BO] IS NOT NULL AND 'NCGroupBO:' || [ncCode].[SITE] || ',CATAN_MAN' IS NOT NULL OR
		[ncGroupMember].[NC_GROUP_BO] IS NULL AND 'NCGroupBO:' || [ncCode].[SITE] || ',CATAN_MAN' IS NULL OR
		[ncGroupMember].[NC_GROUP_BO] = 'NCGroupBO:' || [ncCode].[SITE] || ',CATAN_ALL' AND [ncGroupMember].[NC_GROUP_BO] IS NOT NULL AND 'NCGroupBO:' || [ncCode].[SITE] || ',CATAN_ALL' IS NOT NULL OR
		[ncGroupMember].[NC_GROUP_BO] IS NULL AND 'NCGroupBO:' || [ncCode].[SITE] || ',CATAN_ALL' IS NULL
)
SELECT
	[item_1].[NcCodeBo],
	[item_1].[NcCode],
	[item_1].[NcCodeDescription]
FROM
	[AllowedNcCode] [item_1]
WHERE
	[item_1].[NcCodeBo] = @ncCodeBo

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [NC_GROUP_MEMBER]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [NC_CODE]

