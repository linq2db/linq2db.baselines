-- SqlServer.Contained SqlServer.2019

CREATE TABLE [tempdb]..[#T_d735e8439d57]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_d735e8439d57](item)

-- SqlServer.Contained SqlServer.2019

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_d735e8439d57] [t1]

-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_d735e8439d57]

