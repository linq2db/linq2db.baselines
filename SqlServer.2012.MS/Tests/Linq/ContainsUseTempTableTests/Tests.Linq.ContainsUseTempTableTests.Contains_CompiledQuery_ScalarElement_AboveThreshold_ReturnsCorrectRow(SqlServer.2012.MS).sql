-- SqlServer.2012.MS SqlServer.2012

CREATE TABLE [tempdb]..[#T_c92a02da089f]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_c92a02da089f](item)

-- SqlServer.2012.MS SqlServer.2012

SELECT TOP (1)
	[t1].[item]
FROM
	[tempdb]..[#T_c92a02da089f] [t1]
ORDER BY
	[t1].[item]

-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[tempdb]..[#T_c92a02da089f]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_c92a02da089f]

