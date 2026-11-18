-- SQLite.Classic SQLite
SELECT
	[e].[Id],
	CAST([e].[Value1] AS NVarChar(11))
FROM
	[TranslatedMemberEntity] [e]

-- SQLite.Classic SQLite
SELECT
	[e].[Id],
	Lower(substr(hex([e].[Key]), 7, 2) || substr(hex([e].[Key]), 5, 2) || substr(hex([e].[Key]), 3, 2) || substr(hex([e].[Key]), 1, 2) || '-' || substr(hex([e].[Key]), 11, 2) || substr(hex([e].[Key]), 9, 2) || '-' || substr(hex([e].[Key]), 15, 2) || substr(hex([e].[Key]), 13, 2) || '-' || substr(hex([e].[Key]), 17, 4) || '-' || substr(hex([e].[Key]), 21, 12))
FROM
	[TranslatedMemberEntity] [e]

-- SQLite.Classic SQLite
SELECT
	[e].[Id],
	CASE
		WHEN [e].[Value1] >= 5 THEN [e].[Value1]
		ELSE 5
	END
FROM
	[TranslatedMemberEntity] [e]

-- SQLite.Classic SQLite
SELECT
	[e].[Id],
	CASE
		WHEN [e].[Value1] <= 5 THEN [e].[Value1]
		ELSE 5
	END
FROM
	[TranslatedMemberEntity] [e]

-- SQLite.Classic SQLite
SELECT
	[e].[Id],
	[e].[Date]
FROM
	[TranslatedMemberEntity] [e]

-- SQLite.Classic SQLite
SELECT
	[e].[Id],
	[e].[Date]
FROM
	[TranslatedMemberEntity] [e]

