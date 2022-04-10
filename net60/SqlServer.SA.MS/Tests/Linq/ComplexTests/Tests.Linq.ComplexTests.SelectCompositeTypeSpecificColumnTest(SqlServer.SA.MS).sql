BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

CREATE TABLE [User]
(
	[city]            NVarChar(4000)     NULL,
	[user_name]       NVarChar(4000)     NULL,
	[street]          NVarChar(4000)     NULL,
	[building_number] Int            NOT NULL
)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[u].[city]
FROM
	[User] [u]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[u].[street]
FROM
	[User] [u]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [User]

