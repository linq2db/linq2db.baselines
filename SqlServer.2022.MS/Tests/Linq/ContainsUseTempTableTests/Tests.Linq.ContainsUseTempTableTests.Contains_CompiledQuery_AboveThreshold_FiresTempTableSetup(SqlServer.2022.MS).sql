-- SqlServer.2022.MS SqlServer.2022

CREATE TABLE [tempdb]..[#T_938c63b24058]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_938c63b24058](item)

-- SqlServer.2022.MS SqlServer.2022

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_938c63b24058] [t1]

-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#T_938c63b24058]

