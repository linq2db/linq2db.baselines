-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	CASE
		WHEN [e].[Value] BETWEEN 2 AND 5 THEN 0
		ELSE 1
	END
FROM
	[SampleClass] [e]

