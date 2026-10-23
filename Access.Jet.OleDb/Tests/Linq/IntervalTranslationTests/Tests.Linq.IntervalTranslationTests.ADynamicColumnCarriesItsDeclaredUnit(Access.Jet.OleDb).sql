-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Elapsed BigInt -- Int64
SET     @Elapsed = 5400

INSERT INTO [DynamicDurationRow]
(
	[Id],
	[Elapsed]
)
VALUES
(
	@Id,
	@Elapsed
)

-- Access.Jet.OleDb AccessOleDb
SELECT TOP 2
	[t1].[Id],
	[t1].[Elapsed]
FROM
	[DynamicDurationRow] [t1]

-- Access.Jet.OleDb AccessOleDb
SELECT TOP 2
	[r].[Elapsed] / 60
FROM
	[DynamicDurationRow] [r]

