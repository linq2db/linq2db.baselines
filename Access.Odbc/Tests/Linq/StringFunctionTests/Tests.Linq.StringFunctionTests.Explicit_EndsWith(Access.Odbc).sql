﻿BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Count(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE '%Persecution' AND InStr(Len([r].[Diagnosis]) - 10, [r].[Diagnosis], 'Persecution', 0) = (Len([r].[Diagnosis]) - 10)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Count(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE '%persecution' AND InStr(Len([r].[Diagnosis]) - 10, [r].[Diagnosis], 'persecution', 0) = (Len([r].[Diagnosis]) - 10)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Count(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE '%persecution'

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Count(*)
FROM
	[Patient] [r]
WHERE
	[r].[Diagnosis] LIKE '%Persecution'

