BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [WhereWithBool]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [WhereWithBool]
(
	[Id]        Int NOT NULL,
	[BoolValue] Bit NOT NULL,

	CONSTRAINT [PK_WhereWithBool] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @BoolValue Boolean
SET     @BoolValue = True

INSERT INTO [WhereWithBool]
(
	[Id],
	[BoolValue]
)
VALUES
(
	@Id,
	@BoolValue
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[t].[Id],
	[t].[BoolValue]
FROM
	[WhereWithBool] [t],
	[WhereWithBool] [x]
WHERE
	[x].[BoolValue] AND [x].[Id] = 1

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [WhereWithBool]

