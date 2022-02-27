BeforeExecute
-- SqlServer.Contained SqlServer.2017

CREATE TABLE [Issue1982Table]
(
	[Time]     Time     NOT NULL,
	[DateTime] DateTime NOT NULL
)

BeforeExecute
-- SqlServer.Contained SqlServer.2017

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
-- SqlServer.Contained SqlServer.2017

DROP TABLE IF EXISTS [Issue1982Table]

