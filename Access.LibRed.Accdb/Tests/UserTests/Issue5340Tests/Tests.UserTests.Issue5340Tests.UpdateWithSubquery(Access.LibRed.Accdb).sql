-- Access.LibRed.Accdb Access.LibRed AccessLibRed
UPDATE
	[OuterTable] [t1]
SET
	[t1].[Field1] = (
		SELECT TOP 1
			[y].[Field4]
		FROM
			[InnerTable] [y]
		WHERE
			[t1].[Field2] = [y].[Field3]
		ORDER BY
			[y].[Field4]
	)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[Field1],
	[t1].[Field2]
FROM
	[OuterTable] [t1]
ORDER BY
	[t1].[Id]

