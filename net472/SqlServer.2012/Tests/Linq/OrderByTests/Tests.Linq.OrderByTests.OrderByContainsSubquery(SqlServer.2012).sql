BeforeExecute
-- SqlServer.2012

SELECT
	[_].[PersonID],
	[_].[LastName],
	IIF(EXISTS(
		SELECT
			*
		FROM
			(VALUES
				(1), (3)
			) [t1]([item])
		WHERE
			[t1].[item] = [_].[PersonID]
	), 1, 0)
FROM
	[Person] [_]
ORDER BY
	IIF([_].[PersonID] IN (1, 3), 1, 0)

