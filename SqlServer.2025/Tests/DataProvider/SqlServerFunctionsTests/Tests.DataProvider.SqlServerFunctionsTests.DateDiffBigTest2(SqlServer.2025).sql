﻿BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	DATEDIFF_BIG(Month, DATETIME2FROMPARTS(2020, 2, 29, 0, 0, 0, 0, 7), DateAdd(year, 1, DATETIME2FROMPARTS(2020, 2, 29, 0, 0, 0, 0, 7)))

