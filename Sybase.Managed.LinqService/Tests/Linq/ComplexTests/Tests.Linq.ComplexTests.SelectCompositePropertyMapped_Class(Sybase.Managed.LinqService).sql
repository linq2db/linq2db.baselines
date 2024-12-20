BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'User') IS NOT NULL)
	DROP TABLE [User]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'User') IS NULL)
	EXECUTE('
		CREATE TABLE [User]
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
-- Sybase.Managed Sybase

SELECT DISTINCT TOP 2
	[u].[city],
	[u].[street],
	[u].[building_number]
FROM
	[User] [u]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'User') IS NOT NULL)
	DROP TABLE [User]

