BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	[t].[FirstName],
	[t].[PersonID],
	[t].[LastName],
	[t].[MiddleName],
	[t].[Gender]
FROM
	[Person] [t]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(VALUES
				(N'j'), (N'o'), (N'h'), (N'n')
			) [t1]([item])
		WHERE
			CharIndex([t1].[item], [t].[FirstName]) - 1 > 0
	)

