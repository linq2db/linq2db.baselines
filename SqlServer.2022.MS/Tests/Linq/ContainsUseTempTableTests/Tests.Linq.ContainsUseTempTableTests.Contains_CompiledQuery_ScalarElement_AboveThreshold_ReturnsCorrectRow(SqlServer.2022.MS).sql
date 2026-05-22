-- SqlServer.2022.MS SqlServer.2022

CREATE TABLE [tempdb]..[#T_2dee764e280e]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_2dee764e280e](item)

-- SqlServer.2022.MS SqlServer.2022

SELECT TOP (1)
	[t1].[item]
FROM
	[tempdb]..[#T_2dee764e280e] [t1]
ORDER BY
	[t1].[item]

-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#T_2dee764e280e]

