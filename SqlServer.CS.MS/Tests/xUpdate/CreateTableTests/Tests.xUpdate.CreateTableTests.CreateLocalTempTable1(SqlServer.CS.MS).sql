-- SqlServer.CS.MS SqlServer.2025
DROP TABLE [tempdb]..[#TestTable]

-- SqlServer.CS.MS SqlServer.2025
CREATE TABLE [tempdb]..[#TestTable]
(
	[ID]        Int            NOT NULL,
	[Field1]    NVarChar(50)       NULL,
	[Field2]    NVarChar(4000)     NULL,
	[CreatedOn] DateTime2          NULL
)

-- SqlServer.CS.MS SqlServer.2025
SELECT
	[t1].[ID],
	[t1].[Field1],
	[t1].[Field2],
	[t1].[CreatedOn]
FROM
	[tempdb]..[#TestTable] [t1]

-- SqlServer.CS.MS SqlServer.2025
DROP TABLE [tempdb]..[#TestTable]

