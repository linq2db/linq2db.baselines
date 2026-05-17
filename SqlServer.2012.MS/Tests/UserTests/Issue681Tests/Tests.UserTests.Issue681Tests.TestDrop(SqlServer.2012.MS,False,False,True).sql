-- SqlServer.2012.MS SqlServer.2012

SELECT TOP (1)
	SCHEMA_NAME()
FROM
	[LinqDataTypes] [t1]

-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Issue681Table2]', N'U') IS NOT NULL)
	DROP TABLE [Issue681Table2]

-- SqlServer.2012.MS SqlServer.2012

CREATE TABLE [Issue681Table2]
(
	[ID]    Int NOT NULL,
	[Value] Int NOT NULL,

	CONSTRAINT [PK_Issue681Table2] PRIMARY KEY CLUSTERED ([ID])
)

-- SqlServer.2012.MS SqlServer.2012

DROP TABLE [dbo].[Issue681Table2]

