﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [DateOnlyTable]
(
	[Date]
)
SELECT CAST('2021-01-01' AS DATETIME)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT TOP (2)
	[t1].[Date]
FROM
	[DateOnlyTable] [t1]

