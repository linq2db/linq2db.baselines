-- SqlServer.SA SqlServer.2019

CREATE TABLE [tempdb]..[#T_6d8651fd04aa]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_6d8651fd04aa](item)

-- SqlServer.SA SqlServer.2019

SELECT TOP (1)
	[t1].[item]
FROM
	[tempdb]..[#T_6d8651fd04aa] [t1]
ORDER BY
	[t1].[item]

-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_6d8651fd04aa]

