-- SqlServer.2008.MS SqlServer.2008

CREATE TABLE [tempdb]..[#T_ad85aa6dd795]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_ad85aa6dd795](item)

-- SqlServer.2008.MS SqlServer.2008

SELECT TOP (1)
	[t1].[item]
FROM
	[tempdb]..[#T_ad85aa6dd795] [t1]
ORDER BY
	[t1].[item]

-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#T_ad85aa6dd795]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_ad85aa6dd795]

