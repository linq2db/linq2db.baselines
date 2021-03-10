BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[c1]
FROM
	(
		SELECT
			Cast(StrFTime('%Y', [a_Types].[DateTimeValue]) as int) as [c1]
		FROM
			[Parent] [selectParam]
				LEFT JOIN [LinqDataTypes] [a_Types] ON [selectParam].[ParentID] = [a_Types].[ID]
	) [t1]
GROUP BY
	[t1].[c1]

