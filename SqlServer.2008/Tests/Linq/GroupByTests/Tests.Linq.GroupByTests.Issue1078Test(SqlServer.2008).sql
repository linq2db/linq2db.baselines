BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Issue1078Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue1078Table]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Issue1078Table]', N'U') IS NULL)
	CREATE TABLE [Issue1078Table]
	(
		[UserID] Int NOT NULL,
		[SiteID] Int NOT NULL,
		[Active] Bit NOT NULL,

		CONSTRAINT [PK_Issue1078Table] PRIMARY KEY CLUSTERED ([UserID])
	)

BeforeExecute
-- SqlServer.2008

INSERT INTO [Issue1078Table]
(
	[UserID],
	[SiteID],
	[Active]
)
VALUES
(1,1,1),
(2,1,0),
(3,1,1),
(4,2,0),
(5,2,1),
(6,2,0),
(7,2,0),
(8,3,0),
(9,4,1)

BeforeExecute
-- SqlServer.2008

SELECT
	[grp].[SiteID],
	COUNT(*),
	COUNT(CASE
		WHEN [grp].[Active] = 0 THEN 1
		ELSE NULL
	END)
FROM
	[Issue1078Table] [grp]
GROUP BY
	[grp].[SiteID]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[Issue1078Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue1078Table]

