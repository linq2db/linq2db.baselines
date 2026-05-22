-- SqlServer.2022.MS SqlServer.2022

CREATE TABLE [tempdb]..[#T_e364f6f76173]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_e364f6f76173](item)

-- SqlServer.2022.MS SqlServer.2022

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_e364f6f76173] [t1]

-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#T_e364f6f76173]

