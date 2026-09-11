-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Span BigInt -- Int64
SET     @Span = 54000000000

INSERT INTO [SeparatelyDeclaredRowA]
(
	[Id],
	[Span]
)
VALUES
(
	@Id,
	@Span
)

-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Span BigInt -- Int64
SET     @Span = 54000000000

INSERT INTO [SeparatelyDeclaredRowB]
(
	[Id],
	[Span]
)
VALUES
(
	@Id,
	@Span
)

-- Access.Jet.OleDb AccessOleDb
SELECT
	[x].[Id]
FROM
	[SeparatelyDeclaredRowA] [x],
	[SeparatelyDeclaredRowB] [y]
WHERE
	[x].[Span] = [y].[Span]

