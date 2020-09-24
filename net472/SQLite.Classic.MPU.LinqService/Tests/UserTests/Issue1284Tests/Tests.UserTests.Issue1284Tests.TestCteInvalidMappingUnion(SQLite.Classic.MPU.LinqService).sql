﻿BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1

WITH [CTE_1]
(
	[entry],
	[rn],
	[entry_1],
	[entry_2],
	[entry_3],
	[entry_4]
)
AS
(
	SELECT
		[x].[entry_5],
		[x].[rn],
		[x].[entry_1],
		[x].[entry_2],
		[x].[entry_3],
		[x].[entry_4]
	FROM
		(
			SELECT
				[person_1].[FirstName] as [entry_1],
				[person_1].[PersonID] as [entry_2],
				[person_1].[LastName] as [entry_3],
				[person_1].[MiddleName] as [entry_4],
				[person_1].[Gender] as [entry_5],
				1 as [rn]
			FROM
				[Person] [person_1]
			UNION ALL
			SELECT
				[person_2].[FirstName] as [entry_1],
				[person_2].[PersonID] as [entry_2],
				[person_2].[LastName] as [entry_3],
				[person_2].[MiddleName] as [entry_4],
				[person_2].[Gender] as [entry_5],
				2 as [rn]
			FROM
				[Person] [person_2]
		) [x]
	WHERE
		[x].[rn] = 1
)
SELECT
	[t1].[entry_1],
	[t1].[entry_2],
	[t1].[entry_3],
	[t1].[entry_4],
	[t1].[entry],
	[t1].[rn]
FROM
	[CTE_1] [t1]
LIMIT @take

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[x].[entry_1],
	[x].[entry_2],
	[x].[entry_3],
	[x].[entry_4],
	[x].[entry_5],
	[x].[rn]
FROM
	(
		SELECT
			[person_1].[FirstName] as [entry_1],
			[person_1].[PersonID] as [entry_2],
			[person_1].[LastName] as [entry_3],
			[person_1].[MiddleName] as [entry_4],
			[person_1].[Gender] as [entry_5],
			1 as [rn]
		FROM
			[Person] [person_1]
		UNION ALL
		SELECT
			[person_2].[FirstName] as [entry_1],
			[person_2].[PersonID] as [entry_2],
			[person_2].[LastName] as [entry_3],
			[person_2].[MiddleName] as [entry_4],
			[person_2].[Gender] as [entry_5],
			2 as [rn]
		FROM
			[Person] [person_2]
	) [x]
WHERE
	[x].[rn] = 1
LIMIT @take

