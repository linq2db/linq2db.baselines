-- Sybase.Managed Sybase
INSERT INTO [RecordSetterTable]
(
	[Id],
	[Number],
	[Text]
)
VALUES
(
	1,
	1,
	'before'
)

-- Sybase.Managed Sybase
UPDATE
	[RecordSetterTable]
SET
	[Text] = 'updated recently'
WHERE
	[RecordSetterTable].[Number] = 1

-- Sybase.Managed Sybase
SELECT TOP 2
	[r].[Id],
	[r].[Number],
	[r].[Text]
FROM
	[RecordSetterTable] [r]
WHERE
	[r].[Id] = 1

