-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value Date -- DateTime
SET     @Value = #2020-01-01 11:00:00#

INSERT INTO [SchemaScopedConversionRow]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

-- Access.Ace.OleDb AccessOleDb
SELECT TOP 2
	[t1].[Id],
	[t1].[Value]
FROM
	[SchemaScopedConversionRow] [t1]

