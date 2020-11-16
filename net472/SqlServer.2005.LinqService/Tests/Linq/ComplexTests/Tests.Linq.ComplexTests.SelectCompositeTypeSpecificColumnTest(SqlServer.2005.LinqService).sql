BeforeExecute
-- SqlServer.2005

CREATE TABLE [User]
(
	[city]            NVarChar(4000)     NULL,
	[user_name]       NVarChar(4000)     NULL,
	[street]          NVarChar(4000)     NULL,
	[building_number] Int            NOT NULL
)

BeforeExecute
-- SqlServer.2005

SELECT
	[u].[city]
FROM
	[User] [u]

BeforeExecute
-- SqlServer.2005

SELECT
	[u].[street]
FROM
	[User] [u]

BeforeExecute
-- SqlServer.2005

DROP TABLE [User]

