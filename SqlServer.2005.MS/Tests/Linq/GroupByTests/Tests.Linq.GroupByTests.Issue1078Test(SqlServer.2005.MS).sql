BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue1078Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue1078Table]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue1078Table]', N'U') IS NULL)
	CREATE TABLE [Issue1078Table]
	(
		[UserID] Int NOT NULL,
		[SiteID] Int NOT NULL,
		[Active] Bit NOT NULL,

		CONSTRAINT [PK_Issue1078Table] PRIMARY KEY CLUSTERED ([UserID])
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [Issue1078Table]
(
	[UserID],
	[SiteID],
	[Active]
)
SELECT 1,1,1 UNION ALL
SELECT 2,1,0 UNION ALL
SELECT 3,1,1 UNION ALL
SELECT 4,2,0 UNION ALL
SELECT 5,2,1 UNION ALL
SELECT 6,2,0 UNION ALL
SELECT 7,2,0 UNION ALL
SELECT 8,3,0 UNION ALL
SELECT 9,4,1

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[SiteID],
	Count(*),
	(
		SELECT
			Count(*)
		FROM
			[Issue1078Table] [u]
		WHERE
			CASE
				WHEN [u].[Active] = 1 THEN 1
				ELSE 0
			END = 0 AND
			[t1].[SiteID] = [u].[SiteID]
	)
FROM
	[Issue1078Table] [t1]
GROUP BY
	[t1].[SiteID]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue1078Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue1078Table]

