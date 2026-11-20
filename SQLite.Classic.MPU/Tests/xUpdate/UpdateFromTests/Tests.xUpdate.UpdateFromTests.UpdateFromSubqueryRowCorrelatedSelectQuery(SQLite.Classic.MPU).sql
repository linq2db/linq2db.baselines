-- SQLite.Classic.MPU SQLite.Classic SQLite
UPDATE
	[UpdateRowDiagnostic]
SET
	([Status], [ErrorMessage]) = (CASE
		WHEN [t1].[Field1] IS NOT [d].[Field1] OR [t1].[Field2] IS NOT [d].[Field2]
			THEN 5
		ELSE 3
	END, CASE
		WHEN [t1].[Field1] IS NOT [d].[Field1] OR [t1].[Field2] IS NOT [d].[Field2]
			THEN 'bad'
		ELSE NULL
	END)
FROM
	[UpdateRowDiagnostic] [d]
		LEFT JOIN [UpdateRowCheck] [t1] ON 1=1
WHERE
	[d].[Status] = 0 AND [UpdateRowDiagnostic].[Id] = [d].[Id]

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[d].[Id],
	[d].[Status],
	[d].[ErrorMessage]
FROM
	[UpdateRowDiagnostic] [d]
ORDER BY
	[d].[Id]

