-- SqlServer.Contained SqlServer.2019

CREATE TABLE [tempdb]..[#T_e7326e79c837]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_e7326e79c837](item)

-- SqlServer.Contained SqlServer.2019

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_e7326e79c837] [t1]

-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_e7326e79c837]

