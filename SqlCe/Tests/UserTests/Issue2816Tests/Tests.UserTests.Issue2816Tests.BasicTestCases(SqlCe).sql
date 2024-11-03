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
SELECT 0,'' UNION ALL
SELECT 1,'a' UNION ALL
SELECT 2,' m ' UNION ALL
SELECT 3,' ' UNION ALL
SELECT 4,'  ' UNION ALL
SELECT 5,NULL

BeforeExecute
-- SqlCe

SELECT
	[p].[Id],
	[p].[Text]
FROM
	[Issue2816Table] [p]
WHERE
	[p].[Text] IS NULL OR (REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE([p].[Text], '	', ''), '
', ''), '', ''), '', ''), '', ''), ' ', ''), '', ''), ' ', ''), ' ', ''), ' ', ''), ' ', ''), ' ', ''), ' ', ''), ' ', ''), ' ', ''), ' ', ''), ' ', ''), ' ', ''), ' ', ''), ' ', ''), ' ', ''), ' ', ''), ' ', ''), '　', '')) = ''

BeforeExecute
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Text]
FROM
	[Issue2816Table] [t1]

BeforeExecute
-- SqlCe

DROP TABLE [Issue2816Table]

