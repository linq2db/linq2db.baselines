-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[a].[Name],
	'Used_' || CAST([ssPerAisle].[HeightClass] AS NVarChar(11)),
	COUNT(*)
FROM
	[WMS_StorageShelf] [ssPerAisle]
		INNER JOIN [WMS_Aisle] [a] ON [ssPerAisle].[AisleID] = [a].[ID]
WHERE
	[ssPerAisle].[Status] <> 0
GROUP BY
	[a].[Name],
	[ssPerAisle].[HeightClass]

