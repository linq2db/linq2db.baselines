﻿BeforeExecute
-- SqlServer.2017
DECLARE @p NVarChar(4000) -- String
SET     @p = N'[ 10, 20, 30, 40, 50, 60, 70 ]'

SELECT
	[jd].[value]
FROM
	OPENJSON(@p) [jd]
WHERE
	([jd].[key] <> N'2' OR [jd].[key] IS NULL) AND ([jd].[value] <> N'60' OR [jd].[value] IS NULL)

