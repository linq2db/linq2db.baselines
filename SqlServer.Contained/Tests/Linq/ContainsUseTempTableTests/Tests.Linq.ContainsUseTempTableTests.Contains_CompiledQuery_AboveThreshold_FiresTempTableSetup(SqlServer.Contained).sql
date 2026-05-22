-- SqlServer.Contained SqlServer.2019

CREATE TABLE [tempdb]..[#T_68011890e48f]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_68011890e48f](item)

-- SqlServer.Contained SqlServer.2019

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_68011890e48f] [t1]

-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_68011890e48f]

