-- SqlCe
SELECT
	[p].[Id],
	[p].[Text]
FROM
	[WhiteSpaceTextRow] [p]
WHERE
	NOT ([p].[Text] IS NULL OR REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE([p].[Text], '	', ''), '
', ''), '', ''), '', ''), '', ''), ' ', ''), '', ''), ' ', ''), ' ', ''), ' ', ''), ' ', ''), ' ', ''), ' ', ''), ' ', ''), ' ', ''), ' ', ''), ' ', ''), ' ', ''), ' ', ''), ' ', ''), ' ', ''), ' ', ''), ' ', ''), ' ', ''), '　', '') = '')

