﻿BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[Doctor] [d]
		WHERE
			[d].[PersonID] = [t].[PersonID]
	),
	[t].[PersonID],
	[t].[FirstName],
	[t].[LastName],
	[t].[MiddleName],
	[t].[Gender],
	[t].[LastName] + N', ' + [t].[FirstName],
	[t].[LastName] + N', ' + [t].[FirstName],
	(
		SELECT
			COUNT(*)
		FROM
			[Doctor] [d_1]
		WHERE
			[d_1].[PersonID] = [t].[PersonID]
	)
FROM
	[Person] [t]
WHERE
	[t].[FirstName] <> N'John'

