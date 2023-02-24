﻿BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue3830TestTable') IS NOT NULL)
	DROP TABLE [Issue3830TestTable]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue3830TestTable') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue3830TestTable]
		(
			[Id]    Int     NOT NULL,
			[Bool1] Char(1) NOT NULL,
			[Bool2] Char(1)     NULL,
			[Bool3] Char(1)     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [Issue3830TestTable]
(
	[Id],
	[Bool1],
	[Bool2],
	[Bool3]
)
SELECT 1,'Y',NULL,NULL UNION ALL
SELECT 2,'N',NULL,'Y' UNION ALL
SELECT 3,'N','Y',NULL UNION ALL
SELECT 4,'Y','N','Y'

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Bool1 Char(1) -- AnsiStringFixedLength
SET     @Bool1 = 'Y'

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	[r].[Bool1] = @Bool1 AND [r].[Bool2] IS NULL AND [r].[Bool3] IS NULL

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Bool1 Char(1) -- AnsiStringFixedLength
SET     @Bool1 = 'Y'

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	[r].[Bool1] = @Bool1 AND [r].[Bool2] IS NULL AND [r].[Bool3] IS NULL

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Bool1 Char(1) -- AnsiStringFixedLength
SET     @Bool1 = 'Y'

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	([r].[Bool3] IS NULL OR [r].[Bool3] IS NULL) AND [r].[Bool1] = @Bool1 AND
	[r].[Bool2] IS NULL

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Bool1 Char(1) -- AnsiStringFixedLength
SET     @Bool1 = 'Y'

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	[r].[Bool2] IS NULL AND [r].[Bool1] = @Bool1 AND [r].[Bool3] IS NULL

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Bool1 Char(1) -- AnsiStringFixedLength
SET     @Bool1 = 'N'
DECLARE @Bool3 Char(1) -- AnsiStringFixedLength
SET     @Bool3 = 'Y'

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	[r].[Bool1] = @Bool1 AND [r].[Bool2] IS NULL AND [r].[Bool3] = @Bool3

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Bool3 Char(1) -- AnsiStringFixedLength
SET     @Bool3 = 'Y'
DECLARE @Bool1 Char(1) -- AnsiStringFixedLength
SET     @Bool1 = 'N'

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	[r].[Bool3] = @Bool3 AND
	[r].[Bool3] IS NOT NULL AND
	[r].[Bool1] = @Bool1 AND
	[r].[Bool2] IS NULL

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Bool2 Char(1) -- AnsiStringFixedLength
SET     @Bool2 = 'N'
DECLARE @Bool4 Char(1) -- AnsiStringFixedLength
SET     @Bool4 = 'Y'

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	[r].[Bool1] = @Bool2 AND [r].[Bool2] IS NULL AND [r].[Bool3] = @Bool4

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Bool1 Char(1) -- AnsiStringFixedLength
SET     @Bool1 = 'N'
DECLARE @Bool3 Char(1) -- AnsiStringFixedLength
SET     @Bool3 = 'Y'

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	[r].[Bool2] IS NULL AND [r].[Bool1] = @Bool1 AND [r].[Bool3] = @Bool3

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Bool1 Char(1) -- AnsiStringFixedLength
SET     @Bool1 = 'N'
DECLARE @Bool2 Char(1) -- AnsiStringFixedLength
SET     @Bool2 = 'Y'

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	[r].[Bool1] = @Bool1 AND [r].[Bool2] = @Bool2 AND [r].[Bool3] IS NULL

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Bool2 Char(1) -- AnsiStringFixedLength
SET     @Bool2 = 'N'
DECLARE @Bool3 Char(1) -- AnsiStringFixedLength
SET     @Bool3 = 'Y'

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	[r].[Bool1] = @Bool2 AND [r].[Bool2] = @Bool3 AND [r].[Bool3] IS NULL

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Bool1 Char(1) -- AnsiStringFixedLength
SET     @Bool1 = 'N'
DECLARE @Bool2 Char(1) -- AnsiStringFixedLength
SET     @Bool2 = 'Y'

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	([r].[Bool3] IS NULL OR [r].[Bool3] IS NULL) AND [r].[Bool1] = @Bool1 AND
	[r].[Bool2] = @Bool2

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Bool1 Char(1) -- AnsiStringFixedLength
SET     @Bool1 = 'N'

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	[r].[Bool2] IS NOT NULL AND [r].[Bool1] = @Bool1 AND
	[r].[Bool3] IS NULL

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Bool1 Char(1) -- AnsiStringFixedLength
SET     @Bool1 = 'Y'
DECLARE @Bool2 Char(1) -- AnsiStringFixedLength
SET     @Bool2 = 'N'
DECLARE @Bool3 Char(1) -- AnsiStringFixedLength
SET     @Bool3 = 'Y'

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	[r].[Bool1] = @Bool1 AND [r].[Bool2] = @Bool2 AND [r].[Bool3] = @Bool3

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Bool1 Char(1) -- AnsiStringFixedLength
SET     @Bool1 = 'Y'
DECLARE @Bool3 Char(1) -- AnsiStringFixedLength
SET     @Bool3 = 'N'
DECLARE @Bool4 Char(1) -- AnsiStringFixedLength
SET     @Bool4 = 'Y'

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	[r].[Bool1] = @Bool1 AND [r].[Bool2] = @Bool3 AND [r].[Bool3] = @Bool4

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Bool3 Char(1) -- AnsiStringFixedLength
SET     @Bool3 = 'Y'
DECLARE @Bool1 Char(1) -- AnsiStringFixedLength
SET     @Bool1 = 'Y'
DECLARE @Bool2 Char(1) -- AnsiStringFixedLength
SET     @Bool2 = 'N'

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	[r].[Bool3] = @Bool3 AND
	[r].[Bool3] IS NOT NULL AND
	[r].[Bool1] = @Bool1 AND
	[r].[Bool2] = @Bool2

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Bool1 Char(1) -- AnsiStringFixedLength
SET     @Bool1 = 'Y'
DECLARE @Bool3 Char(1) -- AnsiStringFixedLength
SET     @Bool3 = 'Y'

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	[r].[Bool2] IS NOT NULL AND [r].[Bool1] = @Bool1 AND
	[r].[Bool3] = @Bool3

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue3830TestTable') IS NOT NULL)
	DROP TABLE [Issue3830TestTable]

