-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Value6  -- Int32
SET     @Value6 = 7
DECLARE @id  -- Int32
SET     @id = 1

UPDATE
	[UpdateSetTest] [t1]
SET
	[t1].[Value6] = @Value6
WHERE
	[t1].[Id] = @id

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @id  -- Int32
SET     @id = 1

SELECT TOP 2
	[t1].[Value6]
FROM
	[UpdateSetTest] [t1]
WHERE
	[t1].[Id] = @id

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Value6  -- Int32
SET     @Value6 = 8
DECLARE @id  -- Int32
SET     @id = 1

UPDATE
	[UpdateSetTest] [t1]
SET
	[t1].[Value6] = @Value6
WHERE
	[t1].[Id] = @id

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @id  -- Int32
SET     @id = 1

SELECT TOP 2
	[t1].[Value6]
FROM
	[UpdateSetTest] [t1]
WHERE
	[t1].[Id] = @id

