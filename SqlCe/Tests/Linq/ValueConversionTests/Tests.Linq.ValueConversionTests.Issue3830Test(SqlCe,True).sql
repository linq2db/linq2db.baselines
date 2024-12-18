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

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	[r].[Bool1] = 'Y' AND [r].[Bool2] IS NULL AND [r].[Bool3] IS NULL

BeforeExecute
-- SqlCe

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	[r].[Bool1] = 'Y' AND [r].[Bool2] IS NULL AND [r].[Bool3] IS NULL

BeforeExecute
-- SqlCe

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	([r].[Bool3] IS NULL OR [r].[Bool3] IS NULL) AND [r].[Bool1] = 'Y' AND
	[r].[Bool2] IS NULL

BeforeExecute
-- SqlCe

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	[r].[Bool2] IS NULL AND [r].[Bool1] = 'Y' AND [r].[Bool3] IS NULL

BeforeExecute
-- SqlCe

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	[r].[Bool1] = 'N' AND
	[r].[Bool2] IS NULL AND
	[r].[Bool3] = 'Y' AND
	[r].[Bool3] IS NOT NULL

BeforeExecute
-- SqlCe

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	[r].[Bool3] = 'Y' AND [r].[Bool1] = 'N' AND [r].[Bool2] IS NULL

BeforeExecute
-- SqlCe

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	[r].[Bool1] = 'N' AND
	[r].[Bool2] IS NULL AND
	[r].[Bool3] = 'Y' AND
	[r].[Bool3] IS NOT NULL

BeforeExecute
-- SqlCe

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	[r].[Bool2] IS NULL AND
	[r].[Bool1] = 'N' AND
	[r].[Bool3] = 'Y' AND
	[r].[Bool3] IS NOT NULL

BeforeExecute
-- SqlCe

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	[r].[Bool1] = 'N' AND
	[r].[Bool2] = 'Y' AND
	[r].[Bool2] IS NOT NULL AND
	[r].[Bool3] IS NULL

BeforeExecute
-- SqlCe

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	[r].[Bool1] = 'N' AND
	[r].[Bool2] = 'Y' AND
	[r].[Bool2] IS NOT NULL AND
	[r].[Bool3] IS NULL

BeforeExecute
-- SqlCe

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	([r].[Bool3] IS NULL OR [r].[Bool3] IS NULL) AND
	[r].[Bool1] = 'N' AND
	[r].[Bool2] = 'Y' AND
	[r].[Bool2] IS NOT NULL

BeforeExecute
-- SqlCe

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	[r].[Bool2] IS NOT NULL AND [r].[Bool1] = 'N' AND [r].[Bool3] IS NULL

BeforeExecute
-- SqlCe

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	[r].[Bool1] = 'Y' AND
	[r].[Bool2] = 'N' AND
	[r].[Bool2] IS NOT NULL AND
	[r].[Bool3] = 'Y' AND
	[r].[Bool3] IS NOT NULL

BeforeExecute
-- SqlCe

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	[r].[Bool1] = 'Y' AND
	[r].[Bool2] = 'N' AND
	[r].[Bool2] IS NOT NULL AND
	[r].[Bool3] = 'Y' AND
	[r].[Bool3] IS NOT NULL

BeforeExecute
-- SqlCe

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	[r].[Bool3] = 'Y' AND
	[r].[Bool1] = 'Y' AND
	[r].[Bool2] = 'N' AND
	[r].[Bool2] IS NOT NULL

BeforeExecute
-- SqlCe

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	[r].[Bool2] IS NOT NULL AND
	[r].[Bool1] = 'Y' AND
	[r].[Bool3] = 'Y' AND
	[r].[Bool3] IS NOT NULL

BeforeExecute
-- SqlCe

DROP TABLE [Issue3830TestTable]

