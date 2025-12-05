-- Sybase.Managed Sybase

SELECT Max([Id]) FROM [Issue4702Table]

-- Sybase.Managed Sybase

INSERT INTO [Issue4702Table]
(
	[Id],
	[Text]
)
SELECT 1,'Text 1' UNION ALL
SELECT 2,'Text 2'

-- Sybase.Managed Sybase

INSERT INTO [Issue4702Table]
(
	[Text]
)
VALUES
(
	'Text 3'
)

