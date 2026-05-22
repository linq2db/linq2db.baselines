-- SqlServer.2014

CREATE TABLE [tempdb]..[#T_eb529faf75df]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_eb529faf75df](item)

-- SqlServer.2014

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_eb529faf75df] [t1]

-- SqlServer.2014

IF (OBJECT_ID(N'[tempdb]..[#T_eb529faf75df]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_eb529faf75df]

