BeforeExecute
-- Access AccessOleDb

DROP TABLE [BaseTable]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [BaseTable]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL,

	CONSTRAINT [PK_BaseTable] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access AccessOleDb
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
-- Access AccessOleDb

SELECT TOP 1
	[x].[Id],
	[x].[Value]
FROM
	[BaseTable] [x]
WHERE
	[x].[Id] = 1

BeforeExecute
-- Access AccessOleDb

SELECT TOP 1
	[x].[Id],
	[x].[Value]
FROM
	[BaseTable] [x]
WHERE
	[x].[Id] = 1 AND [x].[Value] = 100

BeforeExecute
-- Access AccessOleDb

DROP TABLE [BaseTable]

