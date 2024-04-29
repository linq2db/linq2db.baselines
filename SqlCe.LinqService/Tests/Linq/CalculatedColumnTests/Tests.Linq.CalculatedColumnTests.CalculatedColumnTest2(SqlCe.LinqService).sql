﻿BeforeExecute
-- SqlCe

SELECT
	[t2].[PersonID],
	[t2].[FirstName],
	[t2].[LastName],
	[t2].[MiddleName],
	[t2].[Gender],
	[t2].[LastName] + ', ' + [t2].[FirstName] as [FullName],
	[t2].[LastName] + ', ' + [t2].[FirstName] as [AsSqlFullName],
	[t1].[COUNT_1] as [DoctorCount]
FROM
	[Person] [t2]
		OUTER APPLY (
			SELECT
				COUNT(*) as [COUNT_1]
			FROM
				[Doctor] [d]
			WHERE
				[d].[PersonID] = [t2].[PersonID]
		) [t1]

BeforeExecute
-- SqlCe

SELECT
	[i].[PersonID],
	[i].[FirstName],
	[i].[LastName],
	[i].[MiddleName],
	[i].[Gender],
	[i].[LastName] + ', ' + [i].[FirstName] as [FullName],
	[i].[LastName] + ', ' + [i].[FirstName] as [AsSqlFullName],
	[t1].[COUNT_1] as [DoctorCount]
FROM
	[Person] [i]
		OUTER APPLY (
			SELECT
				COUNT(*) as [COUNT_1]
			FROM
				[Doctor] [d]
			WHERE
				[d].[PersonID] = [i].[PersonID]
		) [t1]
WHERE
	[i].[LastName] + ', ' + [i].[FirstName] <> 'Pupkin, John'

