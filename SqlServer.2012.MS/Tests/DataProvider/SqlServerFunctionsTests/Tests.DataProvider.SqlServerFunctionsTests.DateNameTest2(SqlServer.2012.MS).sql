﻿BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @p DateTime2
SET     @p = DATETIME2FROMPARTS(2022, 3, 22, 0, 0, 0, 0, 7)

SELECT
	DATENAME(Month, @p)

