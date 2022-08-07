BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [Issue1982Table]

BeforeExecute
-- SqlServer.2019

IF (OBJECT_ID(N'[Issue1982Table]', N'U') IS NULL)
	CREATE TABLE [Issue1982Table]
	(
		[Time]     Time      NOT NULL,
		[DateTime] DateTime2 NOT NULL
	)

BeforeExecute
-- SqlServer.2019

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Issue1982Table] [_]
		WHERE
			[_].[Time] < CAST([_].[DateTime] AS TIME)
	), 1, 0)

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [Issue1982Table]

