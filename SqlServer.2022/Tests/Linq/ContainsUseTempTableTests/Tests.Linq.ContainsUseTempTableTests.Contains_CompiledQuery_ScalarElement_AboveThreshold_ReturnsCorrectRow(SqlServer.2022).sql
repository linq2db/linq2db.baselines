-- SqlServer.2022

CREATE TABLE [tempdb]..[#T_df8c43f1a221]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_df8c43f1a221](item)

-- SqlServer.2022

SELECT TOP (1)
	[t1].[item]
FROM
	[tempdb]..[#T_df8c43f1a221] [t1]
ORDER BY
	[t1].[item]

-- SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#T_df8c43f1a221]

