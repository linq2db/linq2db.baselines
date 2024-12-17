BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[User]', N'U') IS NOT NULL)
	DROP TABLE [User]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[User]', N'U') IS NULL)
	CREATE TABLE [User]
	(
		[city]            NVarChar(4000)     NULL,
		[user_name]       NVarChar(4000)     NULL,
		[street]          NVarChar(4000)     NULL,
		[building_number] Int            NOT NULL
	)

BeforeExecute
-- SqlServer.2014
DECLARE @Residence_City NVarChar(4000) -- String
SET     @Residence_City = N'Springwood'
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Freddy'
DECLARE @Residence_Street NVarChar(4000) -- String
SET     @Residence_Street = N'Elm Street'
DECLARE @Residence_Building Int -- Int32
SET     @Residence_Building = 13

INSERT INTO [User]
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
-- SqlServer.2014

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
-- SqlServer.2014

IF (OBJECT_ID(N'[User]', N'U') IS NOT NULL)
	DROP TABLE [User]

