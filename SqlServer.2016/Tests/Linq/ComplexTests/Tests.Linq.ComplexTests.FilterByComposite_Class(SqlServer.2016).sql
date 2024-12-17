BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [User]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[User]', N'U') IS NULL)
	CREATE TABLE [User]
	(
		[city]            NVarChar(4000)     NULL,
		[user_name]       NVarChar(4000)     NULL,
		[street]          NVarChar(4000)     NULL,
		[building_number] Int            NOT NULL
	)

BeforeExecute
-- SqlServer.2016

INSERT INTO [User]
(
	[city],
	[user_name],
	[street],
	[building_number]
)
VALUES
(N'Springwood',N'Freddy',N'Elm Street',13)

BeforeExecute
-- SqlServer.2016

SELECT TOP (2)
	[u].[user_name],
	[u].[city],
	[u].[street],
	[u].[building_number]
FROM
	[User] [u]
WHERE
	[u].[city] = N'Springwood' AND [u].[street] = N'Elm Street' AND
	[u].[building_number] = 13

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [User]

