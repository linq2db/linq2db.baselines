BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Issue1438]
(
	[Id]  Int  NOT NULL IDENTITY,
	[Has] Bit  NOT NULL,

	CONSTRAINT [PK_Issue1438] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Has Boolean
SET     @Has = True

INSERT INTO [Issue1438]
(
	[Has]
)
VALUES
(
	@Has
)

BeforeExecute
-- Access AccessOleDb

SELECT @@IDENTITY

BeforeExecute
-- Access AccessOleDb
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
-- Access AccessOleDb

DROP TABLE [Issue1438]

