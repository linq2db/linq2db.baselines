﻿BeforeExecute
-- SqlServer.2014 SqlServer.2012 (asynchronously)

DROP TABLE [#TestTable]

BeforeExecute
-- SqlServer.2014 SqlServer.2012 (asynchronously)

CREATE TABLE [#TestTable]
(
	[ID]        Int            NOT NULL,
	[Field1]    NVarChar(50)       NULL,
	[Field2]    NVarChar(4000)     NULL,
	[CreatedOn] DateTime           NULL
)

BeforeExecute
-- SqlServer.2014 SqlServer.2012 (asynchronously)

SELECT
	[t1].[ID],
	[t1].[Field1],
	[t1].[Field2],
	[t1].[CreatedOn]
FROM
	[#TestTable] [t1]

BeforeExecute
-- SqlServer.2014 SqlServer.2012 (asynchronously)

DROP TABLE [#TestTable]

