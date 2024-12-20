BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TableWithIdentity') IS NOT NULL)
	DROP TABLE [TableWithIdentity]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TableWithIdentity') IS NULL)
	EXECUTE('
		CREATE TABLE [TableWithIdentity]
		(
			[Id]    Int IDENTITY NOT NULL,
			[Value] Int          NOT NULL,

			CONSTRAINT [PK_TableWithIdentity] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @value Integer -- Int32
SET     @value = 123

INSERT INTO [TableWithIdentity]
(
	[Value]
)
VALUES
(
	@value
)

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 2
	[t1].[Id],
	[t1].[Value]
FROM
	[TableWithIdentity] [t1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TableWithIdentity') IS NOT NULL)
	DROP TABLE [TableWithIdentity]

