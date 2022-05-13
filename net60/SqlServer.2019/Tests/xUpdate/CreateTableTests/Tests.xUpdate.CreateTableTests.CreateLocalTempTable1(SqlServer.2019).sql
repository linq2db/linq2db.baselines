﻿BeforeExecute
-- SqlServer.2019

DROP TABLE [tempdb]..[#TestTable]

BeforeExecute
-- SqlServer.2019

CREATE TABLE [tempdb]..[#TestTable]
(
	[Field1]    NVarChar(50)       NULL,
	[ID]        Int            NOT NULL,
	[Field2]    NVarChar(4000)     NULL,
	[CreatedOn] DateTime           NULL
)

BeforeExecute
-- SqlServer.2019

SELECT
	[t1].[Field1],
	[t1].[ID],
	[t1].[Field2],
	[t1].[CreatedOn]
FROM
	[tempdb]..[#TestTable] [t1]

BeforeExecute
-- SqlServer.2019

DROP TABLE [tempdb]..[#TestTable]

