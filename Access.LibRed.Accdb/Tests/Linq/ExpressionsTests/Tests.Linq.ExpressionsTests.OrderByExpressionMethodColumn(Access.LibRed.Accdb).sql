-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[FirstName],
	[t1].[LastName],
	CASE
		WHEN [t1].[FirstName] IS NULL THEN ''
		ELSE [t1].[FirstName]
	END + ' ' + CASE
		WHEN [t1].[LastName] IS NULL THEN ''
		ELSE [t1].[LastName]
	END
FROM
	[FullNameColumnTable] [t1]
ORDER BY
	CASE
		WHEN [t1].[FirstName] IS NULL THEN ''
		ELSE [t1].[FirstName]
	END + ' ' + CASE
		WHEN [t1].[LastName] IS NULL THEN ''
		ELSE [t1].[LastName]
	END

