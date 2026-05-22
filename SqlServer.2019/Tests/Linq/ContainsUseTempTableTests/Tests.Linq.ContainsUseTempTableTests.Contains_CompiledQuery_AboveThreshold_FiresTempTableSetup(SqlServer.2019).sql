-- SqlServer.2019

CREATE TABLE [tempdb]..[#T_d2771ff104f1]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_d2771ff104f1](item)

-- SqlServer.2019

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_d2771ff104f1] [t1]

-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_d2771ff104f1]

