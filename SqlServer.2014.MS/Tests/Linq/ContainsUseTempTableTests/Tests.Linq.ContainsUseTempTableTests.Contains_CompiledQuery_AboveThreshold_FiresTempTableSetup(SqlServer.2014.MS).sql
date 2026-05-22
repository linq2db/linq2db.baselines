-- SqlServer.2014.MS SqlServer.2014

CREATE TABLE [tempdb]..[#T_425a6eecccf5]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_425a6eecccf5](item)

-- SqlServer.2014.MS SqlServer.2014

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_425a6eecccf5] [t1]

-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[tempdb]..[#T_425a6eecccf5]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_425a6eecccf5]

