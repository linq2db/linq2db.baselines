﻿BeforeExecute
--  SqlServer.Contained SqlServer.2019
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

