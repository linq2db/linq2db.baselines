BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [WhereWithBool]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [WhereWithBool]
(
	[Id]        Int NOT NULL,
	[BoolValue] Bit NOT NULL,

	CONSTRAINT [PK_WhereWithBool] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @BoolValue  -- Boolean
SET     @BoolValue = True

INSERT INTO [WhereWithBool]
(
	[Id],
	[BoolValue]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[Id],
	[t].[BoolValue]
FROM
	[WhereWithBool] [t],
	[WhereWithBool] [x]
WHERE
	[x].[BoolValue] = True AND [x].[Id] = 1

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [WhereWithBool]

