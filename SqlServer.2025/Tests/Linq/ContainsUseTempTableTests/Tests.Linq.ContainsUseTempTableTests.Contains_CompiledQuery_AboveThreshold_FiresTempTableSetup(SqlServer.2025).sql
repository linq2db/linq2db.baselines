-- SqlServer.2025

CREATE TABLE [tempdb]..[#T_22aa45cab58e]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_22aa45cab58e](item)

-- SqlServer.2025

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_22aa45cab58e] [t1]

-- SqlServer.2025

DROP TABLE IF EXISTS [tempdb]..[#T_22aa45cab58e]

