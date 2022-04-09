BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

CREATE TABLE [Issue1982Table]
(
	[Time]     Time     NOT NULL,
	[DateTime] DateTime NOT NULL
)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

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
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [Issue1982Table]

