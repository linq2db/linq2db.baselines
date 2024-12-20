BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TableWithIdentitySrc') IS NOT NULL)
	DROP TABLE [TableWithIdentitySrc]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TableWithIdentitySrc') IS NULL)
	EXECUTE('
		CREATE TABLE [TableWithIdentitySrc]
		(
			[Id]    Int IDENTITY NOT NULL,
			[Value] Int          NOT NULL,

			CONSTRAINT [PK_TableWithIdentitySrc] PRIMARY KEY CLUSTERED ([Id])
		)
	')

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

INSERT INTO [TableWithIdentitySrc]
(
	[Value]
)
VALUES
(
	@Value
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @addition Integer -- Int32
SET     @addition = 123

INSERT INTO [TableWithIdentity]
(
	[Value]
)
SELECT
	[t1].[Value] + @addition
FROM
	[TableWithIdentitySrc] [t1]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TableWithIdentity] [t1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TableWithIdentity') IS NOT NULL)
	DROP TABLE [TableWithIdentity]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TableWithIdentitySrc') IS NOT NULL)
	DROP TABLE [TableWithIdentitySrc]

