-- SqlServer.Contained SqlServer.2019

CREATE TABLE [tempdb]..[#T_2102776bf014]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_2102776bf014](item)

-- SqlServer.Contained SqlServer.2019

SELECT TOP (1)
	[t1].[item]
FROM
	[tempdb]..[#T_2102776bf014] [t1]
ORDER BY
	[t1].[item]

-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_2102776bf014]

