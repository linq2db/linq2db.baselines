-- SqlServer.Contained.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_6e9648be6838]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_6e9648be6838](item)

-- SqlServer.Contained.MS SqlServer.2019

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_6e9648be6838] [t1]

-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_6e9648be6838]

