-- SqlServer.2019.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_00dc0723e506]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_00dc0723e506](item)

-- SqlServer.2019.MS SqlServer.2019

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_00dc0723e506] [t1]

-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_00dc0723e506]

