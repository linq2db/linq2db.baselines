﻿BeforeExecute
-- SqlServer.2005
DECLARE @offset Int -- Int32
SET     @offset = -1

UPDATE
	[Issue4963Table]
SET
	[Field] = CAST(CAST([Issue4963Table].[Field] AS Int) + @offset AS TinyInt)

BeforeExecute
-- SqlServer.2005

SELECT TOP (2)
	[t1].[Field]
FROM
	[Issue4963Table] [t1]

