BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue1438') IS NOT NULL)
	DROP TABLE [Issue1438]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue1438') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue1438]
		(
			[Id]  Int IDENTITY NOT NULL,
			[Has] Bit          NOT NULL,

			CONSTRAINT [PK_Issue1438] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Has Bit -- Boolean
SET     @Has = 1

INSERT INTO [Issue1438]
(
	[Has]
)
VALUES
(
	@Has
)

SELECT @@IDENTITY

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT TOP 2
	[_].[Id],
	[_].[Has]
FROM
	[Issue1438] [_]
WHERE
	[_].[Id] = @id

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue1438') IS NOT NULL)
	DROP TABLE [Issue1438]

