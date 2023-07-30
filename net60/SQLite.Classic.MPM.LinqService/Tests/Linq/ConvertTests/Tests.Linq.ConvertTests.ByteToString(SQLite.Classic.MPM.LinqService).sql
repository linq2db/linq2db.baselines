BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[p].[c1]
FROM
	(
		SELECT
			Cast(Cast([t].[ID] as TinyInt) as NVarChar(3)) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [p]
WHERE
	Length([p].[c1]) > 0

