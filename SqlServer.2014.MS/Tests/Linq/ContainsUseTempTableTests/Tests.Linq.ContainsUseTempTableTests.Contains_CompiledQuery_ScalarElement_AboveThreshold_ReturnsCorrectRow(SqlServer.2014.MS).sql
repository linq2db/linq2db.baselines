-- SqlServer.2014.MS SqlServer.2014

CREATE TABLE [tempdb]..[#T_a06b76c7efea]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_a06b76c7efea](item)

-- SqlServer.2014.MS SqlServer.2014

SELECT TOP (1)
	[t1].[item]
FROM
	[tempdb]..[#T_a06b76c7efea] [t1]
ORDER BY
	[t1].[item]

-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[tempdb]..[#T_a06b76c7efea]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_a06b76c7efea]

