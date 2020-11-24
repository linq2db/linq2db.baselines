BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE [Issue1438]
(
	[Id]  Int IDENTITY NOT NULL,
	[Has] Bit          NOT NULL,

	CONSTRAINT [PK_Issue1438] PRIMARY KEY CLUSTERED ([Id])
)

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
DECLARE @id_1 Integer -- Int32
SET     @id_1 = 1

SELECT TOP 2
	[_].[Id],
	[_].[Has]
FROM
	[Issue1438] [_]
WHERE
	[_].[Id] = @id_1

BeforeExecute
-- Sybase.Managed Sybase

DROP TABLE [Issue1438]

