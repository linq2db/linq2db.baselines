-- SqlServer.2019.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_54591bf0b433]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_54591bf0b433](item)

-- SqlServer.2019.MS SqlServer.2019

SELECT TOP (1)
	[t1].[item]
FROM
	[tempdb]..[#T_54591bf0b433] [t1]
ORDER BY
	[t1].[item]

-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_54591bf0b433]

