-- SqlServer.Contained SqlServer.2019

CREATE TABLE [tempdb]..[#T_c9f89402eba5]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_c9f89402eba5](item)

-- SqlServer.Contained SqlServer.2019

SELECT TOP (1)
	[t1].[item]
FROM
	[tempdb]..[#T_c9f89402eba5] [t1]
ORDER BY
	[t1].[item]

-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_c9f89402eba5]

