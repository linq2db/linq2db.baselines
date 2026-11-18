-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Span BigInt -- Int64
SET     @Span = 5400

INSERT INTO [ScaledRow]
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
	[t1].[Source],
	[t1].[Span]
FROM
	(
		SELECT
			1 as [Source],
			[r].[Span]
		FROM
			[ScaledRow] [r]
		UNION ALL
		SELECT
			2 as [Source],
			[r_1].[Span]
		FROM
			[ScaledRow] [r_1]
	) [t1]
ORDER BY
	[t1].[Source]

