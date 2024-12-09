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
DECLARE @Value Integer -- Int32
SET     @Value = 1

INSERT INTO [TableWithIdentity]
(
	[Value]
)
VALUES
(
	@Value
)

BeforeExecute
-- Sybase.Managed Sybase

UPDATE
	[TableWithIdentity]
SET
	[Value] = 123

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

