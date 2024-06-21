BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'MessageEventDTO') IS NOT NULL)
	DROP TABLE [MessageEventDTO]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'MessageEventDTO') IS NULL)
	EXECUTE('
		CREATE TABLE [MessageEventDTO]
		(
			[Id] Int NOT NULL,

			CONSTRAINT [PK_MessageEventDTO] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'MessageEventDTOTb2') IS NOT NULL)
	DROP TABLE [MessageEventDTOTb2]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'MessageEventDTOTb2') IS NULL)
	EXECUTE('
		CREATE TABLE [MessageEventDTOTb2]
		(
			[Id] Int NOT NULL,

			CONSTRAINT [PK_MessageEventDTOTb2] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [MessageEventDTOTb2]
(
	[Id]
)
SELECT
	[x].[Id]
FROM
	[MessageEventDTO] [x]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'MessageEventDTOTb2') IS NOT NULL)
	DROP TABLE [MessageEventDTOTb2]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'MessageEventDTO') IS NOT NULL)
	DROP TABLE [MessageEventDTO]

