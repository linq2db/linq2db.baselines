BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @json NVarChar(4000) -- String
SET     @json = N'[ 10, 20, 30, 40, 50, 60, 70 ]'

SELECT
	[jd].[value]
FROM
	OPENJSON(@json) [jd]
WHERE
	([jd].[key] <> N'2' OR [jd].[key] IS NULL) AND ([jd].[value] <> N'60' OR [jd].[value] IS NULL)

