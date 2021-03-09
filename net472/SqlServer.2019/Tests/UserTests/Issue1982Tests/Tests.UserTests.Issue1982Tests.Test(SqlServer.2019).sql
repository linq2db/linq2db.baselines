BeforeExecute
-- SqlServer.2019 SqlServer.2017

CREATE TABLE [Issue1982Table]
(
	[Time]     Time     NOT NULL,
	[DateTime] DateTime NOT NULL
)

BeforeExecute
-- SqlServer.2019 SqlServer.2017

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
-- SqlServer.2019 SqlServer.2017

IF (OBJECT_ID(N'[Issue1982Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue1982Table]

