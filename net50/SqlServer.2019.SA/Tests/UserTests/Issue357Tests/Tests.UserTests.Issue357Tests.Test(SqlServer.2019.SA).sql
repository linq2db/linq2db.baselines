﻿BeforeExecute
-- SqlServer.2019.SA SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[t].[ID],
	[t].[datetimeoffsetDataType]
FROM
	[AllTypes2] [t]
WHERE
	[t].[ID] = 2

