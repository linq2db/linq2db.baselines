BeforeExecute
-- SqlCe

DROP TABLE [Issue2816Table]

BeforeExecute
-- SqlCe

CREATE TABLE [Issue2816Table]
(
	[Id]   Int           NOT NULL,
	[Text] NVarChar(255)     NULL,

	CONSTRAINT [PK_Issue2816Table] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

INSERT INTO [Issue2816Table]
(
	[Id],
	[Text]
)
SELECT 1,'　' UNION ALL
SELECT 2,' 　 ' UNION ALL
SELECT 3,' 　x '

BeforeExecute
-- SqlCe

SELECT
	[p].[Id],
	[p].[Text]
FROM
	[Issue2816Table] [p]
WHERE
	NOT ([p].[Text] IS NULL OR (REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE([p].[Text], '	', ''), '
', ''), '', ''), '', ''), '', ''), ' ', ''), '', ''), ' ', ''), ' ', ''), ' ', ''), ' ', ''), ' ', ''), ' ', ''), ' ', ''), ' ', ''), ' ', ''), ' ', ''), ' ', ''), ' ', ''), ' ', ''), ' ', ''), ' ', ''), ' ', ''), '　', '')) = '')

BeforeExecute
-- SqlCe

DROP TABLE [Issue2816Table]

