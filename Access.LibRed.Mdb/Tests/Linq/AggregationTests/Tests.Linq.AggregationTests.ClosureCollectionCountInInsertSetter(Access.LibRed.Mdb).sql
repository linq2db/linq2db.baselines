-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @EmptyCount  -- Int32
SET     @EmptyCount = 0
DECLARE @ItemsCount  -- Int32
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

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT TOP 2
	[t1].[Id],
	[t1].[EmptyCount],
	[t1].[ItemsCount]
FROM
	[CountTarget] [t1]

