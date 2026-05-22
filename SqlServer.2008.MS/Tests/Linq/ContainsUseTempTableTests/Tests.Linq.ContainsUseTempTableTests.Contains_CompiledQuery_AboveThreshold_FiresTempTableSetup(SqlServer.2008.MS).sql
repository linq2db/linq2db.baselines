-- SqlServer.2008.MS SqlServer.2008

CREATE TABLE [tempdb]..[#T_fbfd7a2b934f]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_fbfd7a2b934f](item)

-- SqlServer.2008.MS SqlServer.2008

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_fbfd7a2b934f] [t1]

-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#T_fbfd7a2b934f]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_fbfd7a2b934f]

