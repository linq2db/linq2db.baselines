﻿BeforeExecute
-- Access AccessOleDb

DROP TABLE [Issue3830TestTable]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Issue3830TestTable]
(
	[Id]    Int     NOT NULL,
	[Bool1] Char(1) NOT NULL,
	[Bool2] Char(1)     NULL,
	[Bool3] Char(1)     NULL
)

BeforeExecute
-- Access AccessOleDb

INSERT INTO [Issue3830TestTable]
(
	[Id],
	[Bool1],
	[Bool2],
	[Bool3]
)
VALUES
(
	1,
	'Y',
	NULL,
	NULL
)

BeforeExecute
-- Access AccessOleDb

INSERT INTO [Issue3830TestTable]
(
	[Id],
	[Bool1],
	[Bool2],
	[Bool3]
)
VALUES
(
	2,
	'N',
	NULL,
	'Y'
)

BeforeExecute
-- Access AccessOleDb

INSERT INTO [Issue3830TestTable]
(
	[Id],
	[Bool1],
	[Bool2],
	[Bool3]
)
VALUES
(
	3,
	'N',
	'Y',
	NULL
)

BeforeExecute
-- Access AccessOleDb

INSERT INTO [Issue3830TestTable]
(
	[Id],
	[Bool1],
	[Bool2],
	[Bool3]
)
VALUES
(
	4,
	'Y',
	'N',
	'Y'
)

BeforeExecute
-- Access AccessOleDb

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
-- Access AccessOleDb

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
-- Access AccessOleDb

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	([r].[Bool3] = NULL OR [r].[Bool3] IS NULL) AND [r].[Bool1] = 'Y' AND
	[r].[Bool2] IS NULL

BeforeExecute
-- Access AccessOleDb

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
-- Access AccessOleDb

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	[r].[Bool1] = 'N' AND [r].[Bool2] IS NULL AND [r].[Bool3] = 'Y'

BeforeExecute
-- Access AccessOleDb

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
-- Access AccessOleDb

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	[r].[Bool1] = 'N' AND [r].[Bool2] IS NULL AND [r].[Bool3] = 'Y'

BeforeExecute
-- Access AccessOleDb

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	[r].[Bool2] IS NULL AND [r].[Bool1] = 'N' AND [r].[Bool3] = 'Y'

BeforeExecute
-- Access AccessOleDb

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	[r].[Bool1] = 'N' AND [r].[Bool2] = 'Y' AND [r].[Bool3] IS NULL

BeforeExecute
-- Access AccessOleDb

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	[r].[Bool1] = 'N' AND [r].[Bool2] = 'Y' AND [r].[Bool3] IS NULL

BeforeExecute
-- Access AccessOleDb

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	([r].[Bool3] = NULL OR [r].[Bool3] IS NULL) AND [r].[Bool1] = 'N' AND
	[r].[Bool2] = 'Y'

BeforeExecute
-- Access AccessOleDb

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
-- Access AccessOleDb

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	[r].[Bool1] = 'Y' AND [r].[Bool2] = 'N' AND [r].[Bool3] = 'Y'

BeforeExecute
-- Access AccessOleDb

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	[r].[Bool1] = 'Y' AND [r].[Bool2] = 'N' AND [r].[Bool3] = 'Y'

BeforeExecute
-- Access AccessOleDb

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	[r].[Bool3] = 'Y' AND [r].[Bool1] = 'Y' AND [r].[Bool2] = 'N'

BeforeExecute
-- Access AccessOleDb

SELECT
	[r].[Id],
	[r].[Bool1],
	[r].[Bool2],
	[r].[Bool3]
FROM
	[Issue3830TestTable] [r]
WHERE
	[r].[Bool2] IS NOT NULL AND [r].[Bool1] = 'Y' AND [r].[Bool3] = 'Y'

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Issue3830TestTable]

