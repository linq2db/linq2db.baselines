﻿BeforeExecute
-- SqlServer.2012
DECLARE @Date DateTime2
SET     @Date = DATETIME2FROMPARTS(2020, 2, 29, 0, 0, 0, 0, 7)
DECLARE @p DateTime2
SET     @p = DATETIME2FROMPARTS(2021, 2, 28, 0, 0, 0, 0, 7)

SELECT
	DATEDIFF(Month, @Date, @p)

