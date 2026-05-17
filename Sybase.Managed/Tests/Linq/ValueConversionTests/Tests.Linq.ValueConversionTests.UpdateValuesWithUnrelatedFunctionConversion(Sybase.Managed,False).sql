-- Sybase.Managed Sybase
DECLARE @yes UniVarChar(1) -- String
SET     @yes = 'X'
DECLARE @no UniVarChar -- String
SET     @no = NULL

UPDATE
	[TableWithConverterValue]
SET
	[Test1] = CASE
		WHEN ([TableWithConverterValue].[Id] > 0) THEN @yes
		ELSE @no
	END
WHERE
	[TableWithConverterValue].[Id] = 1

-- Sybase.Managed Sybase

SELECT TOP 2
	[x].[Id],
	[x].[NoConversion],
	[x].[Test1],
	[x].[Test2]
FROM
	[TableWithConverterValue] [x]
WHERE
	[x].[Id] = 1

