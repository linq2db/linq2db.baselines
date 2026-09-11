-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id Int -- Int32
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

-- SqlServer.SA.MS SqlServer.2019
SELECT TOP (2)
	[t1].[Id],
	[t1].[Elapsed]
FROM
	[DynamicDurationRow] [t1]

-- SqlServer.SA.MS SqlServer.2019
SELECT TOP (2)
	CAST([r].[Elapsed] AS Float) / 60
FROM
	[DynamicDurationRow] [r]

