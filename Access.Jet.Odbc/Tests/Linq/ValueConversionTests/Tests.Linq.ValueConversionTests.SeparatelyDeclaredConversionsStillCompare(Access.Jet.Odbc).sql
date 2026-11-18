-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Span VarChar -- AnsiString
SET     @Span = 54000000000

INSERT INTO [SeparatelyDeclaredRowA]
(
	[Id],
	[Span]
)
VALUES
(
	?,
	?
)

-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Span VarChar -- AnsiString
SET     @Span = 54000000000

INSERT INTO [SeparatelyDeclaredRowB]
(
	[Id],
	[Span]
)
VALUES
(
	?,
	?
)

-- Access.Jet.Odbc AccessODBC
SELECT
	[x].[Id]
FROM
	[SeparatelyDeclaredRowA] [x],
	[SeparatelyDeclaredRowB] [y]
WHERE
	[x].[Span] = [y].[Span]

