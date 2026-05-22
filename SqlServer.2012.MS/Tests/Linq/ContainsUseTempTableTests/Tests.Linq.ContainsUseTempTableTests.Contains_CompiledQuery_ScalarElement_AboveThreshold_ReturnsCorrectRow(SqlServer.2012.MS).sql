-- SqlServer.2012.MS SqlServer.2012

CREATE TABLE [tempdb]..[#T_9b2bf8af9e8b]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_9b2bf8af9e8b](item)

-- SqlServer.2012.MS SqlServer.2012

SELECT TOP (1)
	[t1].[item]
FROM
	[tempdb]..[#T_9b2bf8af9e8b] [t1]
ORDER BY
	[t1].[item]

-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[tempdb]..[#T_9b2bf8af9e8b]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_9b2bf8af9e8b]

