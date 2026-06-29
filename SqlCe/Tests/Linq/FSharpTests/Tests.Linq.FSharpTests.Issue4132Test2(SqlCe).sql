-- SqlCe

INSERT INTO [Issue4132Table]
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
	[Issue4132Table]
SET
	[Text] = 'updated recently'
WHERE
	[Issue4132Table].[Number] = 1

-- SqlCe

SELECT TOP (2)
	[r].[Id],
	[r].[Number] as [Number_1],
	[r].[Text]
FROM
	[Issue4132Table] [r]
WHERE
	[r].[Id] = 1

