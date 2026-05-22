-- SqlServer.2019

CREATE TABLE [tempdb]..[#T_9bbe35044543]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_9bbe35044543](item)

-- SqlServer.2019

SELECT TOP (1)
	[t1].[item]
FROM
	[tempdb]..[#T_9bbe35044543] [t1]
ORDER BY
	[t1].[item]

-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_9bbe35044543]

