-- SqlServer.2022

CREATE TABLE [tempdb]..[#T_c88f2d8a2972]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_c88f2d8a2972](item)

-- SqlServer.2022

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_c88f2d8a2972] [t1]

-- SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#T_c88f2d8a2972]

