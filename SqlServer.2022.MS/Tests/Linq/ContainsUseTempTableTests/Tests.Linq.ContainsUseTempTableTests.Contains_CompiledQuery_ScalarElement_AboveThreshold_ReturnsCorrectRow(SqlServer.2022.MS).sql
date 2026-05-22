-- SqlServer.2022.MS SqlServer.2022

CREATE TABLE [tempdb]..[#T_d689bee01d9d]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_d689bee01d9d](item)

-- SqlServer.2022.MS SqlServer.2022

SELECT TOP (1)
	[t1].[item]
FROM
	[tempdb]..[#T_d689bee01d9d] [t1]
ORDER BY
	[t1].[item]

-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#T_d689bee01d9d]

