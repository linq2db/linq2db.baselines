BeforeExecute
-- SqlServer.2008

CREATE TABLE [User]
(
	[city]      NVarChar(4000)     NULL,
	[user_name] NVarChar(4000)     NULL,
	[street]    NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.2008

SELECT
	[u].[city]
FROM
	[User] [u]

BeforeExecute
-- SqlServer.2008

SELECT
	[u].[street]
FROM
	[User] [u]

BeforeExecute
-- SqlServer.2008

DROP TABLE [User]

