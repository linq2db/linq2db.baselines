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

INSERT INTO [User]
(
	[city],
	[user_name],
	[street],
	[building_number]
)
SELECT 'Springwood','Freddy','Elm Street',13

BeforeExecute
-- Sybase.Managed Sybase

SELECT DISTINCT TOP 2
	[u].[user_name],
	[u].[city],
	[u].[street],
	[u].[building_number]
FROM
	[User] [u]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'User') IS NOT NULL)
	DROP TABLE [User]

