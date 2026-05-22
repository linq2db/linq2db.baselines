-- SqlServer.2022.MS SqlServer.2022

CREATE TABLE [tempdb]..[#T_4854cf12a01b]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_4854cf12a01b](item)

-- SqlServer.2022.MS SqlServer.2022

SELECT TOP (1)
	[t1].[item]
FROM
	[tempdb]..[#T_4854cf12a01b] [t1]
ORDER BY
	[t1].[item]

-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#T_4854cf12a01b]

