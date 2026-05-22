-- SqlServer.2017.MS SqlServer.2017

CREATE TABLE [tempdb]..[#T_e01f17f0ffbd]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_e01f17f0ffbd](item)

-- SqlServer.2017.MS SqlServer.2017

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_e01f17f0ffbd] [t1]

-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [tempdb]..[#T_e01f17f0ffbd]

