﻿BeforeExecute
-- SqlCe

SELECT
	[t].[FirstName],
	[t].[PersonID] as [ID],
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
			(
				SELECT 'j' AS [item]
				UNION ALL
				SELECT 'o' AS [item]
				UNION ALL
				SELECT 'h' AS [item]
				UNION ALL
				SELECT 'n' AS [item]) [x]
		WHERE
			CharIndex([x].[item], [t].[FirstName]) - 1 > 0
	)

