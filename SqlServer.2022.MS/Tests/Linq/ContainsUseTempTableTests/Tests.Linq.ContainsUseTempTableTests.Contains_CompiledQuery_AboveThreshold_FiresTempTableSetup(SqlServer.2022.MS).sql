-- SqlServer.2022.MS SqlServer.2022

CREATE TABLE [tempdb]..[#T_b9067762f418]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_b9067762f418](item)

-- SqlServer.2022.MS SqlServer.2022

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_b9067762f418] [t1]

-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#T_b9067762f418]

