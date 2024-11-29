BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [Issue3830TestTable]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

IF (OBJECT_ID(N'[Issue3830TestTable]', N'U') IS NULL)
	CREATE TABLE [Issue3830TestTable]
	(
		[Id]    Int     NOT NULL,
		[Bool1] Char(1) NOT NULL,
		[Bool2] Char(1)     NULL,
		[Bool3] Char(1)     NULL
	)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Bool1 Char(1) -- AnsiStringFixedLength
SET     @Bool1 = N'Y'
DECLARE @Bool2 Char -- AnsiStringFixedLength
SET     @Bool2 = NULL
DECLARE @Bool3 Char -- AnsiStringFixedLength
SET     @Bool3 = NULL

INSERT INTO [Issue3830TestTable]
(
	[Id],
	[Bool1],
	[Bool2],
	[Bool3]
)
VALUES
(
	@Id,
	@Bool1,
	@Bool2,
	@Bool3
)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Bool1 Char(1) -- AnsiStringFixedLength
SET     @Bool1 = N'N'
DECLARE @Bool2 Char -- AnsiStringFixedLength
SET     @Bool2 = NULL
DECLARE @Bool3 Char(1) -- AnsiStringFixedLength
SET     @Bool3 = N'Y'

INSERT INTO [Issue3830TestTable]
(
	[Id],
	[Bool1],
	[Bool2],
	[Bool3]
)
VALUES
(
	@Id,
	@Bool1,
	@Bool2,
	@Bool3
)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @Bool1 Char(1) -- AnsiStringFixedLength
SET     @Bool1 = N'N'
DECLARE @Bool2 Char(1) -- AnsiStringFixedLength
SET     @Bool2 = N'Y'
DECLARE @Bool3 Char -- AnsiStringFixedLength
SET     @Bool3 = NULL

INSERT INTO [Issue3830TestTable]
(
	[Id],
	[Bool1],
	[Bool2],
	[Bool3]
)
VALUES
(
	@Id,
	@Bool1,
	@Bool2,
	@Bool3
)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 4
DECLARE @Bool1 Char(1) -- AnsiStringFixedLength
SET     @Bool1 = N'Y'
DECLARE @Bool2 Char(1) -- AnsiStringFixedLength
SET     @Bool2 = N'N'
DECLARE @Bool3 Char(1) -- AnsiStringFixedLength
SET     @Bool3 = N'Y'

INSERT INTO [Issue3830TestTable]
(
	[Id],
	[Bool1],
	[Bool2],
	[Bool3]
)
VALUES
(
	@Id,
	@Bool1,
	@Bool2,
	@Bool3
)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
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

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
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

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
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
	([r].[Bool3] IS NULL OR [r].[Bool3] IS NULL) AND [r].[Bool1] = @Bool1 AND
	[r].[Bool2] IS NULL

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
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

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
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

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
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

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
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

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
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

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
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

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
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

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
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
	([r].[Bool3] IS NULL OR [r].[Bool3] IS NULL) AND [r].[Bool1] = @Bool1 AND
	[r].[Bool2] = @Bool2

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
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

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
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

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
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

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
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

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
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

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [Issue3830TestTable]

