BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [User]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[User]', N'U') IS NULL)
	CREATE TABLE [User]
	(
		[city]            NVarChar(4000)     NULL,
		[user_name]       NVarChar(4000)     NULL,
		[street]          NVarChar(4000)     NULL,
		[building_number] Int            NOT NULL
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[u].[city]
FROM
	[User] [u]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[u].[street]
FROM
	[User] [u]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [User]

