-- SqlServer.2017.MS SqlServer.2017
DECLARE @Bool1 Char(1) -- AnsiStringFixedLength
SET     @Bool1 = N'Y'

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	[r].[Bool1] = @Bool1 AND [r].[Bool2] IS NULL AND [r].[Bool3] IS NULL

-- SqlServer.2017.MS SqlServer.2017
DECLARE @true_value Char(1) -- AnsiStringFixedLength
SET     @true_value = N'Y'

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

-- SqlServer.2017.MS SqlServer.2017
DECLARE @Bool1 Char(1) -- AnsiStringFixedLength
SET     @Bool1 = N'Y'

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	[r].[Bool3] IS NULL AND [r].[Bool1] = @Bool1 AND [r].[Bool2] IS NULL

-- SqlServer.2017.MS SqlServer.2017
DECLARE @Bool1 Char(1) -- AnsiStringFixedLength
SET     @Bool1 = N'Y'

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	[r].[Bool2] IS NULL AND [r].[Bool1] = @Bool1 AND [r].[Bool3] IS NULL

-- SqlServer.2017.MS SqlServer.2017
DECLARE @Bool1 Char(1) -- AnsiStringFixedLength
SET     @Bool1 = N'N'
DECLARE @Bool3 Char(1) -- AnsiStringFixedLength
SET     @Bool3 = N'Y'

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	[r].[Bool1] = @Bool1 AND [r].[Bool2] IS NULL AND [r].[Bool3] = @Bool3

-- SqlServer.2017.MS SqlServer.2017
DECLARE @true_value Char(1) -- AnsiStringFixedLength
SET     @true_value = N'Y'
DECLARE @Bool1 Char(1) -- AnsiStringFixedLength
SET     @Bool1 = N'N'

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	[r].[Bool3] = @true_value AND [r].[Bool1] = @Bool1 AND
	[r].[Bool2] IS NULL

-- SqlServer.2017.MS SqlServer.2017
DECLARE @false_value Char(1) -- AnsiStringFixedLength
SET     @false_value = N'N'
DECLARE @Bool3 Char(1) -- AnsiStringFixedLength
SET     @Bool3 = N'Y'

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	[r].[Bool1] = @false_value AND [r].[Bool2] IS NULL AND
	[r].[Bool3] = @Bool3

-- SqlServer.2017.MS SqlServer.2017
DECLARE @Bool1 Char(1) -- AnsiStringFixedLength
SET     @Bool1 = N'N'
DECLARE @Bool3 Char(1) -- AnsiStringFixedLength
SET     @Bool3 = N'Y'

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	[r].[Bool2] IS NULL AND [r].[Bool1] = @Bool1 AND [r].[Bool3] = @Bool3

-- SqlServer.2017.MS SqlServer.2017
DECLARE @Bool1 Char(1) -- AnsiStringFixedLength
SET     @Bool1 = N'N'
DECLARE @Bool2 Char(1) -- AnsiStringFixedLength
SET     @Bool2 = N'Y'

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	[r].[Bool1] = @Bool1 AND [r].[Bool2] = @Bool2 AND [r].[Bool3] IS NULL

-- SqlServer.2017.MS SqlServer.2017
DECLARE @false_value Char(1) -- AnsiStringFixedLength
SET     @false_value = N'N'
DECLARE @Bool2 Char(1) -- AnsiStringFixedLength
SET     @Bool2 = N'Y'

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	[r].[Bool1] = @false_value AND [r].[Bool2] = @Bool2 AND
	[r].[Bool3] IS NULL

-- SqlServer.2017.MS SqlServer.2017
DECLARE @Bool1 Char(1) -- AnsiStringFixedLength
SET     @Bool1 = N'N'
DECLARE @Bool2 Char(1) -- AnsiStringFixedLength
SET     @Bool2 = N'Y'

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	[r].[Bool3] IS NULL AND [r].[Bool1] = @Bool1 AND [r].[Bool2] = @Bool2

-- SqlServer.2017.MS SqlServer.2017
DECLARE @Bool1 Char(1) -- AnsiStringFixedLength
SET     @Bool1 = N'N'

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

-- SqlServer.2017.MS SqlServer.2017
DECLARE @Bool1 Char(1) -- AnsiStringFixedLength
SET     @Bool1 = N'Y'
DECLARE @Bool2 Char(1) -- AnsiStringFixedLength
SET     @Bool2 = N'N'
DECLARE @Bool3 Char(1) -- AnsiStringFixedLength
SET     @Bool3 = N'Y'

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	[r].[Bool1] = @Bool1 AND [r].[Bool2] = @Bool2 AND [r].[Bool3] = @Bool3

-- SqlServer.2017.MS SqlServer.2017
DECLARE @true_value Char(1) -- AnsiStringFixedLength
SET     @true_value = N'Y'
DECLARE @Bool2 Char(1) -- AnsiStringFixedLength
SET     @Bool2 = N'N'
DECLARE @Bool3 Char(1) -- AnsiStringFixedLength
SET     @Bool3 = N'Y'

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	[r].[Bool1] = @true_value AND [r].[Bool2] = @Bool2 AND
	[r].[Bool3] = @Bool3

-- SqlServer.2017.MS SqlServer.2017
DECLARE @true_value Char(1) -- AnsiStringFixedLength
SET     @true_value = N'Y'
DECLARE @Bool1 Char(1) -- AnsiStringFixedLength
SET     @Bool1 = N'Y'
DECLARE @Bool2 Char(1) -- AnsiStringFixedLength
SET     @Bool2 = N'N'

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	[r].[Bool3] = @true_value AND [r].[Bool1] = @Bool1 AND
	[r].[Bool2] = @Bool2

-- SqlServer.2017.MS SqlServer.2017
DECLARE @Bool1 Char(1) -- AnsiStringFixedLength
SET     @Bool1 = N'Y'
DECLARE @Bool3 Char(1) -- AnsiStringFixedLength
SET     @Bool3 = N'Y'

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

