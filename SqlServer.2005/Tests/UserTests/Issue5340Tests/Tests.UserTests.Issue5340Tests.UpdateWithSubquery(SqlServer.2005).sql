-- SqlServer.2005

UPDATE
	[t2]
SET
	[t2].[Field1] = [t1].[Field4]
FROM
	[OuterTable] [t2]
		OUTER APPLY (
			SELECT TOP (1)
				[y].[Field4]
			FROM
				[InnerTable] [y]
			WHERE
				[t2].[Field2] = [y].[Field3]
			ORDER BY
				[y].[Field4]
		) [t1]

-- SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Field1],
	[t1].[Field2]
FROM
	[OuterTable] [t1]
ORDER BY
	[t1].[Id]

