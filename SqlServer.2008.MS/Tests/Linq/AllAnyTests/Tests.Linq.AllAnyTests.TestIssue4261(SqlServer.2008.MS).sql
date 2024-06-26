﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[x].[FirstName],
	[x].[PersonID],
	[x].[LastName],
	[x].[MiddleName],
	[x].[Gender]
FROM
	[Person] [x]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(VALUES
				(N'John'), (N'Not John')
			) [y]([item])
		WHERE
			[y].[item] = [x].[FirstName]
	)

