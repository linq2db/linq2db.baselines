-- SqlServer.2019

CREATE TABLE [tempdb]..[#T_e44bdf27e6be]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_e44bdf27e6be](item)

-- SqlServer.2019

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_e44bdf27e6be] [t1]

-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_e44bdf27e6be]

