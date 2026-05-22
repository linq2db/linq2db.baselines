-- SqlServer.2008.MS SqlServer.2008

CREATE TABLE [tempdb]..[#T_d2bd5ecdd05a]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_d2bd5ecdd05a](item)

-- SqlServer.2008.MS SqlServer.2008

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_d2bd5ecdd05a] [t1]

-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#T_d2bd5ecdd05a]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_d2bd5ecdd05a]

