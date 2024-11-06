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
-- SqlServer.SA SqlServer.2019

SELECT DISTINCT TOP (2)
	[u].[user_name],
	[u].[city],
	[u].[street],
	[u].[building_number]
FROM
	[UserStruct] [u]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [UserStruct]

