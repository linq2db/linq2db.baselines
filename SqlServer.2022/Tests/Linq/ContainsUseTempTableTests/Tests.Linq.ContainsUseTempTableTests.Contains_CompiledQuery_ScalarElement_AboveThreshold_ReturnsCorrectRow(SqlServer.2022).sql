-- SqlServer.2022

CREATE TABLE [tempdb]..[#T_196599501026]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_196599501026](item)

-- SqlServer.2022

SELECT TOP (1)
	[t1].[item]
FROM
	[tempdb]..[#T_196599501026] [t1]
ORDER BY
	[t1].[item]

-- SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#T_196599501026]

