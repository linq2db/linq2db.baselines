-- SqlServer.2019.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_384e3b7e42d0]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_384e3b7e42d0](item)

-- SqlServer.2019.MS SqlServer.2019

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_384e3b7e42d0] [t1]

-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_384e3b7e42d0]

