-- SqlServer.CS SqlServer.2025
UPDATE
	[UpdateOuterTable]
SET
	[Field1] = (
		SELECT TOP (1)
			[y].[Field4]
		FROM
			[UpdateInnerTable] [y]
		WHERE
			[UpdateOuterTable].[Field2] = [y].[Field3]
		ORDER BY
			[y].[Field4]
	)

-- SqlServer.CS SqlServer.2025
SELECT
	[t1].[Id],
	[t1].[Field1],
	[t1].[Field2]
FROM
	[UpdateOuterTable] [t1]
ORDER BY
	[t1].[Id]

