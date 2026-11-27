-- Sybase.Managed Sybase
SELECT Max([Id]) FROM [KeepIdentityTable]

-- Sybase.Managed Sybase
INSERT INTO [KeepIdentityTable]
(
	[Id],
	[Text]
)
SELECT 1,'Text 1' UNION ALL
SELECT 2,'Text 2'

-- Sybase.Managed Sybase
INSERT INTO [KeepIdentityTable]
(
	[Text]
)
VALUES
(
	'Text 3'
)

