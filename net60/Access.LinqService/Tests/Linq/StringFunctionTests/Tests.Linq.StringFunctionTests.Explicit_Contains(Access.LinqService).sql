﻿BeforeExecute
-- Access AccessOleDb

SELECT
	Count(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE '%Paranoid%' AND InStr(1, [r].[Diagnosis], 'Paranoid', 0) >= 1

BeforeExecute
-- Access AccessOleDb

SELECT
	Count(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE '%paranoid%' AND InStr(1, [r].[Diagnosis], 'paranoid', 0) >= 1

BeforeExecute
-- Access AccessOleDb

SELECT
	Count(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE '%paranoid%'

BeforeExecute
-- Access AccessOleDb

SELECT
	Count(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE '%Paranoid%'

