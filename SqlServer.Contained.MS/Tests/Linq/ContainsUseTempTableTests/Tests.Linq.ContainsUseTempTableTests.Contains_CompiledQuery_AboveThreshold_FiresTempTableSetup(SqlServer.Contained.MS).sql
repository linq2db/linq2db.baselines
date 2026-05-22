-- SqlServer.Contained.MS SqlServer.2019

CREATE TABLE [tempdb]..[#T_cdb40d1c92aa]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_cdb40d1c92aa](item)

-- SqlServer.Contained.MS SqlServer.2019

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_cdb40d1c92aa] [t1]

-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#T_cdb40d1c92aa]

