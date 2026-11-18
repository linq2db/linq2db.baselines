-- Access.LibRed.Mdb Access.LibRed AccessLibRed
UPDATE
	[Issue4963Table] [t1]
SET
	[t1].[Field] = [t1].[Field] + -1

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT TOP 2
	[t1].[Id],
	[t1].[Field]
FROM
	[Issue4963Table] [t1]

