-- SqlServer.Contained SqlServer.2019
DECLARE @Id Int -- Int32
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

-- SqlServer.Contained SqlServer.2019
DECLARE @Id Int -- Int32
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

-- SqlServer.Contained SqlServer.2019
SELECT
	[t1].[Id],
	[t1].[Span]
FROM
	(
		SELECT
			[r].[Id],
			[r].[Span]
		FROM
			[SeparatelyDeclaredRowA] [r]
		UNION ALL
		SELECT
			[r_1].[Id],
			[r_1].[Span]
		FROM
			[SeparatelyDeclaredRowB] [r_1]
	) [t1]
ORDER BY
	[t1].[Id]

