BeforeExecute
-- SQLite.MS SQLite
DECLARE @record_Bool1 Char(1) -- AnsiStringFixedLength
SET     @record_Bool1 = 'Y'

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	[r].[Bool1] = @record_Bool1 AND [r].[Bool2] IS NULL AND
	[r].[Bool3] IS NULL

BeforeExecute
-- SQLite.MS SQLite
DECLARE @true_value Char(1) -- AnsiStringFixedLength
SET     @true_value = 'Y'

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	[r].[Bool1] = @true_value AND [r].[Bool2] IS NULL AND
	[r].[Bool3] IS NULL

BeforeExecute
-- SQLite.MS SQLite
DECLARE @record_Bool1 Char(1) -- AnsiStringFixedLength
SET     @record_Bool1 = 'Y'

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	([r].[Bool3] IS NULL OR [r].[Bool3] IS NULL) AND [r].[Bool1] = @record_Bool1 AND
	[r].[Bool2] IS NULL

BeforeExecute
-- SQLite.MS SQLite
DECLARE @record_Bool1 Char(1) -- AnsiStringFixedLength
SET     @record_Bool1 = 'Y'

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	[r].[Bool2] IS NULL AND [r].[Bool1] = @record_Bool1 AND
	[r].[Bool3] IS NULL

BeforeExecute
-- SQLite.MS SQLite
DECLARE @record_Bool1 Char(1) -- AnsiStringFixedLength
SET     @record_Bool1 = 'N'
DECLARE @record_Bool3 Char(1) -- AnsiStringFixedLength
SET     @record_Bool3 = 'Y'

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	[r].[Bool1] = @record_Bool1 AND [r].[Bool2] IS NULL AND
	[r].[Bool3] = @record_Bool3

BeforeExecute
-- SQLite.MS SQLite
DECLARE @true_value Char(1) -- AnsiStringFixedLength
SET     @true_value = 'Y'
DECLARE @record_Bool1 Char(1) -- AnsiStringFixedLength
SET     @record_Bool1 = 'N'

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	[r].[Bool3] = @true_value AND [r].[Bool1] = @record_Bool1 AND
	[r].[Bool2] IS NULL

BeforeExecute
-- SQLite.MS SQLite
DECLARE @false_value Char(1) -- AnsiStringFixedLength
SET     @false_value = 'N'
DECLARE @record_Bool3 Char(1) -- AnsiStringFixedLength
SET     @record_Bool3 = 'Y'

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	[r].[Bool1] = @false_value AND [r].[Bool2] IS NULL AND
	[r].[Bool3] = @record_Bool3

BeforeExecute
-- SQLite.MS SQLite
DECLARE @record_Bool1 Char(1) -- AnsiStringFixedLength
SET     @record_Bool1 = 'N'
DECLARE @record_Bool3 Char(1) -- AnsiStringFixedLength
SET     @record_Bool3 = 'Y'

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	[r].[Bool2] IS NULL AND [r].[Bool1] = @record_Bool1 AND
	[r].[Bool3] = @record_Bool3

BeforeExecute
-- SQLite.MS SQLite
DECLARE @record_Bool1 Char(1) -- AnsiStringFixedLength
SET     @record_Bool1 = 'N'
DECLARE @record_Bool2 Char(1) -- AnsiStringFixedLength
SET     @record_Bool2 = 'Y'

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	[r].[Bool1] = @record_Bool1 AND [r].[Bool2] = @record_Bool2 AND
	[r].[Bool3] IS NULL

BeforeExecute
-- SQLite.MS SQLite
DECLARE @false_value Char(1) -- AnsiStringFixedLength
SET     @false_value = 'N'
DECLARE @record_Bool2 Char(1) -- AnsiStringFixedLength
SET     @record_Bool2 = 'Y'

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	[r].[Bool1] = @false_value AND [r].[Bool2] = @record_Bool2 AND
	[r].[Bool3] IS NULL

BeforeExecute
-- SQLite.MS SQLite
DECLARE @record_Bool1 Char(1) -- AnsiStringFixedLength
SET     @record_Bool1 = 'N'
DECLARE @record_Bool2 Char(1) -- AnsiStringFixedLength
SET     @record_Bool2 = 'Y'

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	([r].[Bool3] IS NULL OR [r].[Bool3] IS NULL) AND [r].[Bool1] = @record_Bool1 AND
	[r].[Bool2] = @record_Bool2

BeforeExecute
-- SQLite.MS SQLite
DECLARE @record_Bool1 Char(1) -- AnsiStringFixedLength
SET     @record_Bool1 = 'N'

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	[r].[Bool2] IS NOT NULL AND [r].[Bool1] = @record_Bool1 AND
	[r].[Bool3] IS NULL

BeforeExecute
-- SQLite.MS SQLite
DECLARE @record_Bool1 Char(1) -- AnsiStringFixedLength
SET     @record_Bool1 = 'Y'
DECLARE @record_Bool2 Char(1) -- AnsiStringFixedLength
SET     @record_Bool2 = 'N'
DECLARE @record_Bool3 Char(1) -- AnsiStringFixedLength
SET     @record_Bool3 = 'Y'

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	[r].[Bool1] = @record_Bool1 AND [r].[Bool2] = @record_Bool2 AND
	[r].[Bool3] = @record_Bool3

BeforeExecute
-- SQLite.MS SQLite
DECLARE @true_value Char(1) -- AnsiStringFixedLength
SET     @true_value = 'Y'
DECLARE @record_Bool2 Char(1) -- AnsiStringFixedLength
SET     @record_Bool2 = 'N'
DECLARE @record_Bool3 Char(1) -- AnsiStringFixedLength
SET     @record_Bool3 = 'Y'

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	[r].[Bool1] = @true_value AND [r].[Bool2] = @record_Bool2 AND
	[r].[Bool3] = @record_Bool3

BeforeExecute
-- SQLite.MS SQLite
DECLARE @true_value Char(1) -- AnsiStringFixedLength
SET     @true_value = 'Y'
DECLARE @record_Bool1 Char(1) -- AnsiStringFixedLength
SET     @record_Bool1 = 'Y'
DECLARE @record_Bool2 Char(1) -- AnsiStringFixedLength
SET     @record_Bool2 = 'N'

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	[r].[Bool3] = @true_value AND [r].[Bool1] = @record_Bool1 AND
	[r].[Bool2] = @record_Bool2

BeforeExecute
-- SQLite.MS SQLite
DECLARE @record_Bool1 Char(1) -- AnsiStringFixedLength
SET     @record_Bool1 = 'Y'
DECLARE @record_Bool3 Char(1) -- AnsiStringFixedLength
SET     @record_Bool3 = 'Y'

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	[r].[Bool2] IS NOT NULL AND [r].[Bool1] = @record_Bool1 AND
	[r].[Bool3] = @record_Bool3

