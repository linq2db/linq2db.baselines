BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Char(36) -- AnsiStringFixedLength
SET     @Id = '193ae7f4-5309-4eee-a746-27b28c7e30f3'

INSERT INTO [TableWithGuid]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 1
	Lower(CAST([t].[Id] AS NVarChar(36)))
FROM
	[TableWithGuid] [t]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t].[Id]
FROM
	[TableWithGuid] [t]
WHERE
	Lower(CAST([t].[Id] AS NVarChar(36))) LIKE '%7f4-53%' ESCAPE '~'

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t].[Id]
FROM
	[TableWithGuid] [t]
WHERE
	Lower(CAST([t].[Id] AS NVarChar(36))) LIKE '193ae%' ESCAPE '~'

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t].[Id]
FROM
	[TableWithGuid] [t]
WHERE
	Lower(CAST([t].[Id] AS NVarChar(36))) LIKE '%8f4-53%' ESCAPE '~'

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t].[Id]
FROM
	[TableWithGuid] [t]
WHERE
	Lower(CAST([t].[Id] AS NVarChar(36))) LIKE '293ae%' ESCAPE '~'

