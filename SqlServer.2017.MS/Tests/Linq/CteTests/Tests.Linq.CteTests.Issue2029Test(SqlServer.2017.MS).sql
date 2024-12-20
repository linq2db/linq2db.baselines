﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [NC_CODE]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[NC_CODE]', N'U') IS NULL)
	CREATE TABLE [NC_CODE]
	(
		[HANDLE]             NVarChar(4000) NOT NULL,
		[CHANGE_STAMP]       Decimal            NULL,
		[SITE]               NVarChar(18)       NULL,
		[NC_CODE]            NVarChar(48)       NULL,
		[DESCRIPTION]        NVarChar(120)      NULL,
		[STATUS_BO]          NVarChar(4000)     NULL,
		[CREATED_DATE_TIME]  DateTime2          NULL,
		[MODIFIED_DATE_TIME] DateTime2          NULL,
		[NC_CATEGORY]        NVarChar(4000)     NULL,
		[DPMO_CATEGORY_BO]   NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [NC_GROUP_MEMBER]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[NC_GROUP_MEMBER]', N'U') IS NULL)
	CREATE TABLE [NC_GROUP_MEMBER]
	(
		[HANDLE]               NVarChar(4000) NOT NULL,
		[NC_GROUP_BO]          NVarChar(4000)     NULL,
		[NC_CODE_OR_GROUP_GBO] NVarChar(4000)     NULL,
		[SEQUENCE]             Decimal            NULL
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @ncCodeBo NVarChar(4000) -- String
SET     @ncCodeBo = N'NCCodeBO:8110,SETUP_OSCILLOSCO'

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
		[ncGroupMember].[NC_GROUP_BO] = N'NCGroupBO:' + [ncCode].[SITE] + N',CATAN_AUTO' OR
		[ncGroupMember].[NC_GROUP_BO] IS NULL AND [ncCode].[SITE] IS NULL OR
		[ncGroupMember].[NC_GROUP_BO] = N'NCGroupBO:' + [ncCode].[SITE] + N',CATAN_MAN' OR
		[ncGroupMember].[NC_GROUP_BO] IS NULL AND [ncCode].[SITE] IS NULL OR
		[ncGroupMember].[NC_GROUP_BO] = N'NCGroupBO:' + [ncCode].[SITE] + N',CATAN_ALL' OR
		[ncGroupMember].[NC_GROUP_BO] IS NULL AND [ncCode].[SITE] IS NULL
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
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [NC_GROUP_MEMBER]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [NC_CODE]

