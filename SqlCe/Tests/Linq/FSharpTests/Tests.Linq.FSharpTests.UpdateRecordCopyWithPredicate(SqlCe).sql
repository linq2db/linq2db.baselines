-- SqlCe
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

-- SqlCe
UPDATE
	[RecordSetterTable]
SET
	[Text] = 'updated recently'
WHERE
	[RecordSetterTable].[Number] = 1

-- SqlCe
SELECT TOP (2)
	[r].[Id],
	[r].[Number],
	[r].[Text]
FROM
	[RecordSetterTable] [r]
WHERE
	[r].[Id] = 1

