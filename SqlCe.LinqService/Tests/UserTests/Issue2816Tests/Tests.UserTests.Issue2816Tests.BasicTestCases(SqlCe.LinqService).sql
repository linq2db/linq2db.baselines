BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[p].[Id],
	[p].[Text]
FROM
	[Issue2816Table] [p]
WHERE
	[p].[Text] IS NULL OR (REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE([p].[Text], '	', ''), '
', ''), '', ''), '', ''), '', ''), ' ', ''), '', ''), ' ', ''), ' ', ''), ' ', ''), ' ', ''), ' ', ''), ' ', ''), ' ', ''), ' ', ''), ' ', ''), ' ', ''), ' ', ''), ' ', ''), ' ', ''), ' ', ''), ' ', ''), ' ', ''), '　', '')) = ''

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Text]
FROM
	[Issue2816Table] [t1]

