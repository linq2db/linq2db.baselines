BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Adsl') IS NOT NULL)
	DROP TABLE [Adsl]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Adsl') IS NULL)
	EXECUTE('
		CREATE TABLE [Adsl]
		(
			[Id]       Int NOT NULL,
			[IdClient] Int     NULL,

			CONSTRAINT [PK_Adsl] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Client') IS NOT NULL)
	DROP TABLE [Client]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Client') IS NULL)
	EXECUTE('
		CREATE TABLE [Client]
		(
			[Id] Int NOT NULL,

			CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[serv].[Id]
FROM
	[Adsl] [serv]
		INNER JOIN [Client] [client_1] ON [serv].[IdClient] = [client_1].[Id]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Client') IS NOT NULL)
	DROP TABLE [Client]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Adsl') IS NOT NULL)
	DROP TABLE [Adsl]

