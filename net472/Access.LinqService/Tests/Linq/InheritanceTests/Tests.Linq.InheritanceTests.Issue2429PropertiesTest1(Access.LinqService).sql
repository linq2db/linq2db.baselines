BeforeExecute
-- Access AccessOleDb

DROP TABLE [BaseTable]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [BaseTable]
(
	[Value] Int NOT NULL,
	[Id]    Int NOT NULL,

	CONSTRAINT [PK_BaseTable] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access AccessOleDb
DECLARE @BaseValue Integer -- Int32
SET     @BaseValue = 100
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO [BaseTable]
(
	[Value],
	[Id]
)
VALUES
(
	@BaseValue,
	@Id
)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [BaseTable]

