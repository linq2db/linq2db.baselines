-- SqlServer.2012

CREATE TABLE [tempdb]..[#T_407280fa3814]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_407280fa3814](item)

-- SqlServer.2012

SELECT TOP (1)
	[t1].[item]
FROM
	[tempdb]..[#T_407280fa3814] [t1]
ORDER BY
	[t1].[item]

-- SqlServer.2012

IF (OBJECT_ID(N'[tempdb]..[#T_407280fa3814]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_407280fa3814]

