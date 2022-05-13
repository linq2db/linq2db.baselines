﻿BeforeExecute
-- SqlServer.SA.MS SqlServer.2019 (asynchronously)

DROP TABLE [tempdb]..[#TestTable]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019 (asynchronously)

CREATE TABLE [tempdb]..[#TestTable]
(
	[ID]        Int            NOT NULL,
	[Field1]    NVarChar(50)       NULL,
	[Field2]    NVarChar(4000)     NULL,
	[CreatedOn] DateTime           NULL
)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019 (asynchronously)

SELECT
	[t1].[ID],
	[t1].[Field1],
	[t1].[Field2],
	[t1].[CreatedOn]
FROM
	[tempdb]..[#TestTable] [t1]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019 (asynchronously)

DROP TABLE [tempdb]..[#TestTable]

