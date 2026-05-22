-- SqlServer.2022

CREATE TABLE [tempdb]..[#T_c0ae20abeeb2]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_c0ae20abeeb2](item)

-- SqlServer.2022

SELECT TOP (1)
	[t1].[item]
FROM
	[tempdb]..[#T_c0ae20abeeb2] [t1]
ORDER BY
	[t1].[item]

-- SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#T_c0ae20abeeb2]

