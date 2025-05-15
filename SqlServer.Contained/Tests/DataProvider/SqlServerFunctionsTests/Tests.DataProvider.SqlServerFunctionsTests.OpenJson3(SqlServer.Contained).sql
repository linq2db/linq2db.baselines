BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[jd].[value]
FROM
	OPENJSON(N'[ 10, 20, 30, 40, 50, 60, 70 ]') [jd]
WHERE
	([jd].[key] <> N'2' OR [jd].[key] IS NULL) AND ([jd].[value] <> N'60' OR [jd].[value] IS NULL)

