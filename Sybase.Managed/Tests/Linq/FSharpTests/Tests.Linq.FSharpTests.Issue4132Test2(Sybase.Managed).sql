-- Sybase.Managed Sybase

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

-- Sybase.Managed Sybase

UPDATE
	[Issue4132Table]
SET
	[Text] = 'updated recently'
WHERE
	[Issue4132Table].[Number] = 1

-- Sybase.Managed Sybase

SELECT TOP 2
	[r].[Id],
	[r].[Number],
	[r].[Text]
FROM
	[Issue4132Table] [r]
WHERE
	[r].[Id] = 1

