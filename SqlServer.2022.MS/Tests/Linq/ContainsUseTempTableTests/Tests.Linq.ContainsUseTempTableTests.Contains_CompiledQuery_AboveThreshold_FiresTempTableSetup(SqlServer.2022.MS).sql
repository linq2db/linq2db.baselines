-- SqlServer.2022.MS SqlServer.2022

CREATE TABLE [tempdb]..[#T_07090d48525c]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_07090d48525c](item)

-- SqlServer.2022.MS SqlServer.2022

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_07090d48525c] [t1]

-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#T_07090d48525c]

