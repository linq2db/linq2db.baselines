﻿BeforeExecute
-- Access AccessOleDb

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND [p].[FirstName] LIKE 'Jo%' AND
	InStr(1, [p].[FirstName], 'Jo', 0) = 1

BeforeExecute
-- Access AccessOleDb

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND [p].[FirstName] LIKE 'jo%' AND
	InStr(1, [p].[FirstName], 'jo', 0) = 1

BeforeExecute
-- Access AccessOleDb

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	([p].[FirstName] NOT LIKE 'Jo%' OR InStr(1, [p].[FirstName], 'Jo', 0) <> 1) AND
	[p].[PersonID] = 1

