BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Issue1078Table]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[Issue1078Table]', N'U') IS NULL)
	CREATE TABLE [Issue1078Table]
	(
		[UserID] Int NOT NULL,
		[SiteID] Int NOT NULL,
		[Active] Bit NOT NULL,

		CONSTRAINT [PK_Issue1078Table] PRIMARY KEY CLUSTERED ([UserID])
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

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
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[grp].[SiteID],
	COUNT(*),
	COUNT(IIF([grp].[Active] = 0, 1, NULL))
FROM
	[Issue1078Table] [grp]
GROUP BY
	[grp].[SiteID]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Issue1078Table]

