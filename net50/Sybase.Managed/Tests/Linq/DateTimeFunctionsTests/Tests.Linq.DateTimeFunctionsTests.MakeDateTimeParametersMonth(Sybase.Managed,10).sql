﻿BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p_1 UniVarChar(2) -- String
SET     @p_1 = '10'

SELECT
	Convert(Date, Convert(NVarChar(100), 2010 + [t].[ID]) + '-' + @p_1 + '-1')
FROM
	[LinqDataTypes] [t]

