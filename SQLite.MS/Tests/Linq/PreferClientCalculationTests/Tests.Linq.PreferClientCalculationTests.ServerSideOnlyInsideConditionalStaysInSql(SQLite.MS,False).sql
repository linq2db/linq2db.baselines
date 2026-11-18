-- SQLite.MS SQLite
SELECT
	CASE
		WHEN [e].[Id] > 1 THEN ABS([e].[Value1])
		ELSE [e].[Value2]
	END
FROM
	[ClientCalcEntity] [e]

