﻿BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [MultipleRowsTable]
(
	[Id],
	[DecimalValue1],
	[DecimalValue2]
)
SELECT 1,NULL,1 UNION ALL
SELECT 2,1.5,-2.6

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[DecimalValue1],
	[t1].[DecimalValue2]
FROM
	[MultipleRowsTable] [t1]
ORDER BY
	[t1].[Id]

