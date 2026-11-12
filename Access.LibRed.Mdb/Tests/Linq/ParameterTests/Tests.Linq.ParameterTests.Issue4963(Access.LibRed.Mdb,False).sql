-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @offset  -- Int32
SET     @offset = -1

UPDATE
	[Issue4963Table] [t1]
SET
	[t1].[Field] = [t1].[Field] + @offset

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT TOP 2
	[t1].[Id],
	[t1].[Field]
FROM
	[Issue4963Table] [t1]

