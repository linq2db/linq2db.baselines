-- SqlServer.2014.MS SqlServer.2014

CREATE TABLE [tempdb]..[#T_e81e7ed9865a]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_e81e7ed9865a](item)

-- SqlServer.2014.MS SqlServer.2014

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_e81e7ed9865a] [t1]

-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[tempdb]..[#T_e81e7ed9865a]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_e81e7ed9865a]

