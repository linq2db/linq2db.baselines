BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'BaseTable') IS NOT NULL)
	DROP TABLE [BaseTable]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'BaseTable') IS NULL)
	EXECUTE('
		CREATE TABLE [BaseTable]
		(
			[Id]    Int NOT NULL,
			[Value] Int NOT NULL,

			CONSTRAINT [PK_BaseTable] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @BaseValue Integer -- Int32
SET     @BaseValue = 100

INSERT INTO [BaseTable]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@BaseValue
)

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 1
	[x].[Id],
	[x].[Value]
FROM
	[BaseTable] [x]
WHERE
	[x].[Id] = 1

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 1
	[x].[Id],
	[x].[Value]
FROM
	[BaseTable] [x]
WHERE
	[x].[Id] = 1 AND [x].[Value] = 100

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'BaseTable') IS NOT NULL)
	DROP TABLE [BaseTable]

