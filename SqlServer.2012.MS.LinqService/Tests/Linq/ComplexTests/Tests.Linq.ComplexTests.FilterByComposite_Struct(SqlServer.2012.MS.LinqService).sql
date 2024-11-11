BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[UserStruct]', N'U') IS NOT NULL)
	DROP TABLE [UserStruct]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[UserStruct]', N'U') IS NULL)
	CREATE TABLE [UserStruct]
	(
		[city]            NVarChar(4000)     NULL,
		[user_name]       NVarChar(4000)     NULL,
		[street]          NVarChar(4000)     NULL,
		[building_number] Int            NOT NULL
	)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @Residence_City NVarChar(4000) -- String
SET     @Residence_City = N'Springwood'
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Freddy'
DECLARE @Residence_Street NVarChar(4000) -- String
SET     @Residence_Street = N'Elm Street'
DECLARE @Residence_Building Int -- Int32
SET     @Residence_Building = 13

INSERT INTO [UserStruct]
(
	[city],
	[user_name],
	[street],
	[building_number]
)
VALUES
(
	@Residence_City,
	@Name,
	@Residence_Street,
	@Residence_Building
)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
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
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[UserStruct]', N'U') IS NOT NULL)
	DROP TABLE [UserStruct]

