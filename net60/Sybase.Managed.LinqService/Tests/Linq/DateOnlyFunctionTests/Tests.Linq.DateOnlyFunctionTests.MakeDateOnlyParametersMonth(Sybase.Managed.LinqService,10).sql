﻿BeforeExecute
-- Sybase.Managed Sybase

SELECT
	Convert(Date, Convert(NVarChar(11), 2010 + [t].[ID]) + '-10-01')
FROM
	[LinqDataTypes] [t]

