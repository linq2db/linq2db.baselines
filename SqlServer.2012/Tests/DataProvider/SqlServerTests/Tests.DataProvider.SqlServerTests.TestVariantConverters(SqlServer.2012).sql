﻿BeforeExecute
INSERT BULK [VariantTable](Id, Value)

BeforeExecute
--  SqlServer.2012

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[VariantTable] [t1]
ORDER BY
	[t1].[Id]

