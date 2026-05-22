-- SqlServer.2022.MS SqlServer.2022

CREATE TABLE [tempdb]..[#T_4524acbaab1f]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_4524acbaab1f](item)

-- SqlServer.2022.MS SqlServer.2022

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_4524acbaab1f] [t1]

-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#T_4524acbaab1f]

