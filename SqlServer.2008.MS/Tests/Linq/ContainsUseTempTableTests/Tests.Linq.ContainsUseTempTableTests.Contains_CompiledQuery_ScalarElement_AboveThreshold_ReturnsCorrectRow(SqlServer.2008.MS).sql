-- SqlServer.2008.MS SqlServer.2008

CREATE TABLE [tempdb]..[#T_3ab26cdc8b21]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_3ab26cdc8b21](item)

-- SqlServer.2008.MS SqlServer.2008

SELECT TOP (1)
	[t1].[item]
FROM
	[tempdb]..[#T_3ab26cdc8b21] [t1]
ORDER BY
	[t1].[item]

-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#T_3ab26cdc8b21]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_3ab26cdc8b21]

