-- SQLite.Classic SQLite
SELECT Max([Id]) FROM [KeepIdentityTable]

-- SQLite.Classic SQLite
INSERT INTO [KeepIdentityTable]
(
	[Id],
	[Text]
)
VALUES
(1,'Text 1'),
(2,'Text 2')

-- SQLite.Classic SQLite
INSERT INTO [KeepIdentityTable]
(
	[Text]
)
VALUES
(
	'Text 3'
)

