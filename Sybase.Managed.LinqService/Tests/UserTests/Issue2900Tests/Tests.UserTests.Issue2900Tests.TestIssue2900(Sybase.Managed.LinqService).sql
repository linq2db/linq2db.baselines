BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Request') IS NOT NULL)
	DROP TABLE [Request]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Request') IS NULL)
	EXECUTE('
		CREATE TABLE [Request]
		(
			[Id] Int IDENTITY NOT NULL,

			CONSTRAINT [PK_Request] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Metric') IS NOT NULL)
	DROP TABLE [Metric]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Metric') IS NULL)
	EXECUTE('
		CREATE TABLE [Metric]
		(
			[Id]        Int   IDENTITY NOT NULL,
			[RequestId] Int            NOT NULL,
			[Value]     Float              NULL,

			CONSTRAINT [PK_Metric] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Metric') IS NOT NULL)
	DROP TABLE [Metric]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Request') IS NOT NULL)
	DROP TABLE [Request]

