-- SqlServer.SA SqlServer.2019

CREATE TABLE [tempdb]..[#T_e26fc7699749]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_e26fc7699749](item)

-- SqlServer.SA SqlServer.2019

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_e26fc7699749] [t1]

-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_e26fc7699749]

