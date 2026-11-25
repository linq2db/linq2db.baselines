-- Access.LibRed.Mdb Access.LibRed AccessLibRed
UPDATE
	[UpdateOuterTable] [t1]
SET
	[t1].[Field1] = (
		SELECT TOP 1
			[y].[Field4]
		FROM
			[UpdateInnerTable] [y]
		WHERE
			[t1].[Field2] = [y].[Field3]
		ORDER BY
			[y].[Field4]
	)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[Field1],
	[t1].[Field2]
FROM
	[UpdateOuterTable] [t1]
ORDER BY
	[t1].[Id]

