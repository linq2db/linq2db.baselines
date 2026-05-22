-- SqlServer.2008.MS SqlServer.2008

CREATE TABLE [tempdb]..[#T_ab93b982004f]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_ab93b982004f](item)

-- SqlServer.2008.MS SqlServer.2008

SELECT TOP (1)
	[t1].[item]
FROM
	[tempdb]..[#T_ab93b982004f] [t1]
ORDER BY
	[t1].[item]

-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#T_ab93b982004f]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_ab93b982004f]

