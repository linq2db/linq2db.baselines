-- SqlServer.2014.MS SqlServer.2014

CREATE TABLE [tempdb]..[#T_41cc16fbbf31]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_41cc16fbbf31](item)

-- SqlServer.2014.MS SqlServer.2014

SELECT TOP (1)
	[t1].[item]
FROM
	[tempdb]..[#T_41cc16fbbf31] [t1]
ORDER BY
	[t1].[item]

-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[tempdb]..[#T_41cc16fbbf31]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_41cc16fbbf31]

