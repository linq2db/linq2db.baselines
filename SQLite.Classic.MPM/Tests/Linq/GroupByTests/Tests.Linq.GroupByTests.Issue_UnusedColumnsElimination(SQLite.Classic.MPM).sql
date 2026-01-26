-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			[r].[PersonID] as [ID],
			'label' as [label]
		FROM
			[Person] [r]
	) [t1]

