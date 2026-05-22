-- SqlServer.Contained.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_44d53e147952]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_44d53e147952](item)

-- SqlServer.Contained.MS SqlServer.2019

SELECT TOP (1)
	[t1].[item]
FROM
	[tempdb]..[#T_44d53e147952] [t1]
ORDER BY
	[t1].[item]

-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_44d53e147952]

