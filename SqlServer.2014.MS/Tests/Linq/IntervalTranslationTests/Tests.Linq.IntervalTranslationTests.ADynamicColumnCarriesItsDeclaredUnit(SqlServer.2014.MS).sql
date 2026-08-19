-- SqlServer.2014.MS SqlServer.2014
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

-- SqlServer.2014.MS SqlServer.2014
SELECT TOP (2)
	[t1].[Id],
	[t1].[Elapsed]
FROM
	[DynamicDurationRow] [t1]

-- SqlServer.2014.MS SqlServer.2014
SELECT TOP (2)
	CAST([r].[Elapsed] AS Float) / 60
FROM
	[DynamicDurationRow] [r]

