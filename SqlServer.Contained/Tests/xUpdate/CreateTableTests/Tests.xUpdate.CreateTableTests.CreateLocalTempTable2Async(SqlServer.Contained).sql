-- SqlServer.Contained SqlServer.2019

DROP TABLE [tempdb]..[#TestTable]

-- SqlServer.Contained SqlServer.2019

CREATE TABLE [tempdb]..[#TestTable]
(
	[ID]        Int            NOT NULL,
	[Field1]    NVarChar(50)       NULL,
	[Field2]    NVarChar(4000)     NULL,
	[CreatedOn] DateTime2          NULL
)

-- SqlServer.Contained SqlServer.2019

SELECT
	[t1].[ID],
	[t1].[Field1],
	[t1].[Field2],
	[t1].[CreatedOn]
FROM
	[tempdb]..[#TestTable] [t1]

-- SqlServer.Contained SqlServer.2019

DROP TABLE [tempdb]..[#TestTable]

