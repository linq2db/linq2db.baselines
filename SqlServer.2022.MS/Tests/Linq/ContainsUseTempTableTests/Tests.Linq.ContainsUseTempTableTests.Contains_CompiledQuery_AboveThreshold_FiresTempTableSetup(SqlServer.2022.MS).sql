-- SqlServer.2022.MS SqlServer.2022

CREATE TABLE [tempdb]..[#T_09bb9f17f16f]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_09bb9f17f16f](item)

-- SqlServer.2022.MS SqlServer.2022

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_09bb9f17f16f] [t1]

-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#T_09bb9f17f16f]

