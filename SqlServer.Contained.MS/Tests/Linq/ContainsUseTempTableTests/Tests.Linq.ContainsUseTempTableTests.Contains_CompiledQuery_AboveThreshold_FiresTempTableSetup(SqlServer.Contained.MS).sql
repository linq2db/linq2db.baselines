-- SqlServer.Contained.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_b9ac7ba4746d]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_b9ac7ba4746d](item)

-- SqlServer.Contained.MS SqlServer.2019

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_b9ac7ba4746d] [t1]

-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_b9ac7ba4746d]

