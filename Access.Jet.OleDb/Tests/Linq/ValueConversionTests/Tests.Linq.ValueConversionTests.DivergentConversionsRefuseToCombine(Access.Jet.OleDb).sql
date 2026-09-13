-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Doubled Integer -- Int32
SET     @Doubled = 20
DECLARE @Tripled Integer -- Int32
SET     @Tripled = 30
DECLARE @Plain Integer -- Int32
SET     @Plain = 10

INSERT INTO [DivergentConversionRow]
(
	[Id],
	[Doubled],
	[Tripled],
	[Plain]
)
VALUES
(
	@Id,
	@Doubled,
	@Tripled,
	@Plain
)

-- Access.Jet.OleDb AccessOleDb
DECLARE @PlainValue Integer -- Int32
SET     @PlainValue = 10

SELECT TOP 2
	[r].[Doubled],
	[r].[Tripled],
	[r].[Plain],
	[r].[Doubled] + [r].[Doubled],
	[r].[Plain] + [r].[Plain],
	[r].[Doubled] + @PlainValue
FROM
	[DivergentConversionRow] [r]

-- Access.Jet.OleDb AccessOleDb
DECLARE @Doubled Integer -- Int32
SET     @Doubled = 20

SELECT
	COUNT(*)
FROM
	[DivergentConversionRow] [r]
WHERE
	[r].[Doubled] = @Doubled

