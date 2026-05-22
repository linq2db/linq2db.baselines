-- SqlServer.2014.MS SqlServer.2014

CREATE TABLE [tempdb]..[#T_d5199bbe316d]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_d5199bbe316d](item)

-- SqlServer.2014.MS SqlServer.2014

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_d5199bbe316d] [t1]

-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[tempdb]..[#T_d5199bbe316d]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_d5199bbe316d]

