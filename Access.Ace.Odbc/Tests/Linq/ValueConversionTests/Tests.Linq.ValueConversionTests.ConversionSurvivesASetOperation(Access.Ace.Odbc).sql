-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Span VarChar -- AnsiString
SET     @Span = 5400

INSERT INTO [ScaledRow]
(
	[Id],
	[Span]
)
VALUES
(
	?,
	?
)

-- Access.Ace.Odbc AccessODBC
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

