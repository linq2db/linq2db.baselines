-- SqlServer.2019.MS SqlServer.2019
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
	N'before'
)

-- SqlServer.2019.MS SqlServer.2019
UPDATE
	[RecordSetterTable]
SET
	[Text] = N'updated recently'
WHERE
	[RecordSetterTable].[Number] = 1

-- SqlServer.2019.MS SqlServer.2019
SELECT TOP (2)
	[r].[Id],
	[r].[Number],
	[r].[Text]
FROM
	[RecordSetterTable] [r]
WHERE
	[r].[Id] = 1

