﻿BeforeExecute
-- SqlCe

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
			(
				SELECT 'John' AS [item]
				UNION ALL
				SELECT 'Not John' AS [item]) [y]
		WHERE
			[y].[item] = [x].[FirstName]
	)

