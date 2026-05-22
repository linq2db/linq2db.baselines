-- SqlServer.2016

CREATE TABLE [tempdb]..[#T_eb946e4d0928]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_eb946e4d0928](item)

-- SqlServer.2016

SELECT TOP (1)
	[t1].[item]
FROM
	[tempdb]..[#T_eb946e4d0928] [t1]
ORDER BY
	[t1].[item]

-- SqlServer.2016

DROP TABLE IF EXISTS [tempdb]..[#T_eb946e4d0928]

