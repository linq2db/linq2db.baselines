BeforeExecute
-- SqlServer.2005

CREATE TABLE [activity649]
(
	[activityid] Int       NOT NULL IDENTITY,
	[personid]   Int       NOT NULL,
	[added]      DateTime  NOT NULL,

	CONSTRAINT [PK_activity649] PRIMARY KEY CLUSTERED ([activityid])
)

BeforeExecute
-- SqlServer.2005

CREATE TABLE [person649]
(
	[personid]   Int             NOT NULL IDENTITY,
	[personname] NVarChar(4000)  NOT NULL,

	CONSTRAINT [PK_person649] PRIMARY KEY CLUSTERED ([personid])
)

BeforeExecute
-- SqlServer.2005

DROP TABLE [person649]

BeforeExecute
-- SqlServer.2005

DROP TABLE [activity649]

