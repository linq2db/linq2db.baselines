BeforeExecute
-- Access AccessOleDb

DROP TABLE [Issue1438]

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
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT TOP 2
	[t1].[Id],
	[t1].[Has]
FROM
	[Issue1438] [t1]
WHERE
	[t1].[Id] = @id

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Issue1438]

