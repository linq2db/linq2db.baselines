BeforeExecute
-- SqlCe

DROP TABLE [Issue3830TestTable]

BeforeExecute
-- SqlCe

CREATE TABLE [Issue3830TestTable]
(
	[Id]    Int      NOT NULL,
	[Bool1] NChar(1) NOT NULL,
	[Bool2] NChar(1)     NULL,
	[Bool3] NChar(1)     NULL
)

BeforeExecute
-- SqlCe

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
-- SqlCe
DECLARE @Bool1 NVarChar(1) -- String
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
-- SqlCe
DECLARE @true_value NVarChar(1) -- String
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
-- SqlCe
DECLARE @Bool1 NVarChar(1) -- String
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
-- SqlCe
DECLARE @Bool1 NVarChar(1) -- String
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
-- SqlCe
DECLARE @Bool1 NVarChar(1) -- String
SET     @Bool1 = 'N'
DECLARE @Bool3 NVarChar(1) -- String
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
-- SqlCe
DECLARE @true_value NVarChar(1) -- String
SET     @true_value = 'Y'
DECLARE @Bool1 NVarChar(1) -- String
SET     @Bool1 = 'N'

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
-- SqlCe
DECLARE @false_value NVarChar(1) -- String
SET     @false_value = 'N'
DECLARE @Bool3 NVarChar(1) -- String
SET     @Bool3 = 'Y'

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
-- SqlCe
DECLARE @Bool1 NVarChar(1) -- String
SET     @Bool1 = 'N'
DECLARE @Bool3 NVarChar(1) -- String
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
-- SqlCe
DECLARE @Bool1 NVarChar(1) -- String
SET     @Bool1 = 'N'
DECLARE @Bool2 NVarChar(1) -- String
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
-- SqlCe
DECLARE @false_value NVarChar(1) -- String
SET     @false_value = 'N'
DECLARE @Bool2 NVarChar(1) -- String
SET     @Bool2 = 'Y'

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
-- SqlCe
DECLARE @Bool1 NVarChar(1) -- String
SET     @Bool1 = 'N'
DECLARE @Bool2 NVarChar(1) -- String
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
-- SqlCe
DECLARE @Bool1 NVarChar(1) -- String
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
-- SqlCe
DECLARE @Bool1 NVarChar(1) -- String
SET     @Bool1 = 'Y'
DECLARE @Bool2 NVarChar(1) -- String
SET     @Bool2 = 'N'
DECLARE @Bool3 NVarChar(1) -- String
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
-- SqlCe
DECLARE @true_value NVarChar(1) -- String
SET     @true_value = 'Y'
DECLARE @Bool2 NVarChar(1) -- String
SET     @Bool2 = 'N'
DECLARE @Bool3 NVarChar(1) -- String
SET     @Bool3 = 'Y'

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
-- SqlCe
DECLARE @true_value NVarChar(1) -- String
SET     @true_value = 'Y'
DECLARE @Bool1 NVarChar(1) -- String
SET     @Bool1 = 'Y'
DECLARE @Bool2 NVarChar(1) -- String
SET     @Bool2 = 'N'

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
-- SqlCe
DECLARE @Bool1 NVarChar(1) -- String
SET     @Bool1 = 'Y'
DECLARE @Bool3 NVarChar(1) -- String
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
-- SqlCe

DROP TABLE [Issue3830TestTable]

