-- SqlServer.2017

UPDATE
	[OuterTable]
SET
	[Field1] = (
		SELECT TOP (1)
			[y].[Field4]
		FROM
			[InnerTable] [y]
		WHERE
			[OuterTable].[Field2] = [y].[Field3]
		ORDER BY
			[y].[Field4]
	)

-- SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[Field1],
	[t1].[Field2]
FROM
	[OuterTable] [t1]
ORDER BY
	[t1].[Id]

