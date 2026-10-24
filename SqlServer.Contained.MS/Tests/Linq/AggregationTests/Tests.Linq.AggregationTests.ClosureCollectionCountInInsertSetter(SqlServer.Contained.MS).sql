-- SqlServer.Contained.MS SqlServer.2019
DECLARE @EmptyCount Int -- Int32
SET     @EmptyCount = 0
DECLARE @ItemsCount Int -- Int32
SET     @ItemsCount = 2

INSERT INTO [CountTarget]
(
	[Id],
	[EmptyCount],
	[ItemsCount]
)
VALUES
(
	1,
	@EmptyCount,
	@ItemsCount
)

-- SqlServer.Contained.MS SqlServer.2019
SELECT TOP (2)
	[t1].[Id],
	[t1].[EmptyCount],
	[t1].[ItemsCount]
FROM
	[CountTarget] [t1]

