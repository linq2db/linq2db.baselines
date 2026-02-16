-- SqlServer.2005.MS SqlServer.2005

UPDATE
	[OuterTable]
SET
	[Field1] = (
		SELECT
			[b_1].[Field4]
		FROM
			(
				SELECT
					1 as [c1]
			) [t1]
				CROSS APPLY (
					SELECT TOP (1)
						[b].[Field4]
					FROM
						[InnerTable] [b]
					WHERE
						[OuterTable].[Field2] = [b].[Field3]
					ORDER BY
						[b].[Field4]
				) [b_1]
	)

-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[Field1],
	[t1].[Field2]
FROM
	[OuterTable] [t1]
ORDER BY
	[t1].[Id]

