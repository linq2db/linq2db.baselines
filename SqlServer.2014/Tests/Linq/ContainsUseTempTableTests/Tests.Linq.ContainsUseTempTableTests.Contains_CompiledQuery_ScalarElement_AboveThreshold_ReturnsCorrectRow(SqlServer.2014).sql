-- SqlServer.2014

CREATE TABLE [tempdb]..[#T_334e511e5f0a]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_334e511e5f0a](item)

-- SqlServer.2014

SELECT TOP (1)
	[t1].[item]
FROM
	[tempdb]..[#T_334e511e5f0a] [t1]
ORDER BY
	[t1].[item]

-- SqlServer.2014

IF (OBJECT_ID(N'[tempdb]..[#T_334e511e5f0a]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_334e511e5f0a]

