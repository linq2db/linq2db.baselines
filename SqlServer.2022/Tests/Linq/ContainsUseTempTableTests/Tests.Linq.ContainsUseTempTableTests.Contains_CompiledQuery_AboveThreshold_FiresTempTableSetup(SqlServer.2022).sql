-- SqlServer.2022

CREATE TABLE [tempdb]..[#T_11fb062249d9]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_11fb062249d9](item)

-- SqlServer.2022

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_11fb062249d9] [t1]

-- SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#T_11fb062249d9]

