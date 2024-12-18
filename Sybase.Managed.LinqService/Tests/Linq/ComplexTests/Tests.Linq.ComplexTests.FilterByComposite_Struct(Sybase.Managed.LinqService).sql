BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'UserStruct') IS NOT NULL)
	DROP TABLE [UserStruct]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'UserStruct') IS NULL)
	EXECUTE('
		CREATE TABLE [UserStruct]
		(
			[city]            NVarChar(255)     NULL,
			[user_name]       NVarChar(255)     NULL,
			[street]          NVarChar(255)     NULL,
			[building_number] Int           NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Residence_City UniVarChar(10) -- String
SET     @Residence_City = 'Springwood'
DECLARE @Name UniVarChar(6) -- String
SET     @Name = 'Freddy'
DECLARE @Residence_Street UniVarChar(10) -- String
SET     @Residence_Street = 'Elm Street'
DECLARE @Residence_Building Integer -- Int32
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
-- Sybase.Managed Sybase

SELECT TOP 2
	[u].[user_name],
	[u].[city],
	[u].[street],
	[u].[building_number]
FROM
	[UserStruct] [u]
WHERE
	[u].[city] = 'Springwood' AND
	[u].[city] IS NOT NULL AND
	[u].[street] = 'Elm Street' AND
	[u].[street] IS NOT NULL AND
	[u].[building_number] = 13

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'UserStruct') IS NOT NULL)
	DROP TABLE [UserStruct]

