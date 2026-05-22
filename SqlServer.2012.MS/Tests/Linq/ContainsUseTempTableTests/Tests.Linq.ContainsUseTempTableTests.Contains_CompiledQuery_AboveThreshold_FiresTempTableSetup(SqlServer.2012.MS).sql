-- SqlServer.2012.MS SqlServer.2012

CREATE TABLE [tempdb]..[#T_842a197f7406]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_842a197f7406](item)

-- SqlServer.2012.MS SqlServer.2012

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_842a197f7406] [t1]

-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[tempdb]..[#T_842a197f7406]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_842a197f7406]

