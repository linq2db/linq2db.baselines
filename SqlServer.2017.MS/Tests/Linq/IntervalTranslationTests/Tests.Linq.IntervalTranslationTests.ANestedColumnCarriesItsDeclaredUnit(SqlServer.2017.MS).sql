-- SqlServer.2017.MS SqlServer.2017
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Declared_Elapsed BigInt -- Int64
SET     @Declared_Elapsed = 5400
DECLARE @Converted_Elapsed BigInt -- Int64
SET     @Converted_Elapsed = 5400

INSERT INTO [NestedDurationRow]
(
	[Id],
	[Declared],
	[Converted]
)
VALUES
(
	@Id,
	@Declared_Elapsed,
	@Converted_Elapsed
)

-- SqlServer.2017.MS SqlServer.2017
SELECT TOP (2)
	[t1].[Id],
	[t1].[Declared],
	[t1].[Converted]
FROM
	[NestedDurationRow] [t1]

-- SqlServer.2017.MS SqlServer.2017
SELECT TOP (2)
	CAST([r].[Declared] AS Float) / 60
FROM
	[NestedDurationRow] [r]

