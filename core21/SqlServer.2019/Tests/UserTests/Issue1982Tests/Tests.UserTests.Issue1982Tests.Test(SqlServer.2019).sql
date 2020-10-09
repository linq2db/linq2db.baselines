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
	CASE WHEN EXISTS(
		SELECT 
			*
		FROM
			[Issue1982Table] [_]
		WHERE
			[_].[Time] < CAST([_].[DateTime] AS TIME)
	) THEN 1 ELSE 0 END

BeforeExecute
-- SqlServer.2019 SqlServer.2017

DROP TABLE [Issue1982Table]

