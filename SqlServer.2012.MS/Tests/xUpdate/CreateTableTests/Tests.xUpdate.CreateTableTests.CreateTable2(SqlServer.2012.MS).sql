-- SqlServer.2012.MS SqlServer.2012

CREATE TABLE [tempdb]..[#TestTable]
(
	[Field1]  Int         NOT NULL,
	[Field11] Int             NULL,
	[Field2]  NVarChar(2)     NULL,
	[Field21] Char(2)     NOT NULL,
	[Field3]  SmallInt    NOT NULL
)

INSERT BULK [tempdb]..[#TestTable](Field1, Field11, Field2, Field21, Field3)

-- SqlServer.2012.MS SqlServer.2012

DROP TABLE [tempdb]..[#TestTable]

