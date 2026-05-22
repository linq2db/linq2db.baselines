-- SqlServer.2012.MS SqlServer.2012

CREATE TABLE [tempdb]..[#T_0053e7ad747a]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_0053e7ad747a](item)

-- SqlServer.2012.MS SqlServer.2012

SELECT TOP (1)
	[t1].[item]
FROM
	[tempdb]..[#T_0053e7ad747a] [t1]
ORDER BY
	[t1].[item]

-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[tempdb]..[#T_0053e7ad747a]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_0053e7ad747a]

