BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [UserStruct]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[UserStruct]', N'U') IS NULL)
	CREATE TABLE [UserStruct]
	(
		[city]            NVarChar(4000)     NULL,
		[user_name]       NVarChar(4000)     NULL,
		[street]          NVarChar(4000)     NULL,
		[building_number] Int            NOT NULL
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

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
-- SqlServer.SA SqlServer.2019
DECLARE @City NVarChar(4000) -- String
SET     @City = N'Springwood'
DECLARE @Street NVarChar(4000) -- String
SET     @Street = N'Elm Street'
DECLARE @Building Int -- Int32
SET     @Building = 13

SELECT TOP (2)
	[u].[user_name],
	[u].[city],
	[u].[street],
	[u].[building_number]
FROM
	[UserStruct] [u]
WHERE
	[u].[city] = @City AND [u].[street] = @Street AND [u].[building_number] = @Building

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [UserStruct]

