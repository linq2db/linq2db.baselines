-- SqlServer.2014.MS SqlServer.2014
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

-- SqlServer.2014.MS SqlServer.2014
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

-- SqlServer.2014.MS SqlServer.2014
SELECT
	[x].[Id]
FROM
	[SeparatelyDeclaredRowA] [x],
	[SeparatelyDeclaredRowB] [y]
WHERE
	[x].[Span] = [y].[Span]

