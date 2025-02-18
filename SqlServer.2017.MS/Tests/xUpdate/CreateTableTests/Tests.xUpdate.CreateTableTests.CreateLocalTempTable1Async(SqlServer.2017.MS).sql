﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017 (asynchronously)

DROP TABLE [tempdb]..[#TestTable]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017 (asynchronously)

CREATE TABLE [tempdb]..[#TestTable]
(
	[ID]        Int           NOT NULL,
	[Field1]    NVarChar(50)      NULL,
	[Field2]    NVarChar(Max)     NULL,
	[CreatedOn] DateTime2         NULL
)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017 (asynchronously)

SELECT
	[t1].[ID],
	[t1].[Field1],
	[t1].[Field2],
	[t1].[CreatedOn]
FROM
	[tempdb]..[#TestTable] [t1]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017 (asynchronously)

DROP TABLE [tempdb]..[#TestTable]

