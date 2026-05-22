-- SqlServer.SA.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_87a7f7856239]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_87a7f7856239](item)

-- SqlServer.SA.MS SqlServer.2019

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_87a7f7856239] [t1]

-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_87a7f7856239]

