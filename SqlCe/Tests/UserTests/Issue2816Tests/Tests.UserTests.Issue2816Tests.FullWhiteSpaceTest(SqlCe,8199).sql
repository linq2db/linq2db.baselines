﻿BeforeExecute
--  SqlCe

SELECT
	[p].[Id],
	[p].[Text]
FROM
	[Issue2816Table] [p]
WHERE
	NOT ([p].[Text] IS NULL OR (REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE([p].[Text], '	', ''), '
', ''), '', ''), '', ''), '', ''), ' ', ''), '', ''), ' ', ''), ' ', ''), ' ', ''), ' ', ''), ' ', ''), ' ', ''), ' ', ''), ' ', ''), ' ', ''), ' ', ''), ' ', ''), ' ', ''), ' ', ''), ' ', ''), ' ', ''), ' ', ''), '　', '')) = '')

