BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [UserStruct]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[UserStruct]', N'U') IS NULL)
	CREATE TABLE [UserStruct]
	(
		[city]            NVarChar(4000)     NULL,
		[user_name]       NVarChar(4000)     NULL,
		[street]          NVarChar(4000)     NULL,
		[building_number] Int            NOT NULL
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

INSERT INTO [UserStruct]
(
	[city],
	[user_name],
	[street],
	[building_number]
)
VALUES
(N'Springwood',N'Freddy',N'Elm Street',13)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT TOP (2)
	[u].[user_name],
	[u].[city],
	[u].[street],
	[u].[building_number]
FROM
	[UserStruct] [u]
WHERE
	[u].[city] = N'Springwood' AND [u].[street] = N'Elm Street' AND
	[u].[building_number] = 13

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [UserStruct]

