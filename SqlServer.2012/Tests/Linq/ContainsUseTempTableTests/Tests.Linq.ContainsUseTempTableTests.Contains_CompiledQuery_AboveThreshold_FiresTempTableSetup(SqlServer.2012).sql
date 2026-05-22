-- SqlServer.2012

CREATE TABLE [tempdb]..[#T_488318e23415]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_488318e23415](item)

-- SqlServer.2012

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_488318e23415] [t1]

-- SqlServer.2012

IF (OBJECT_ID(N'[tempdb]..[#T_488318e23415]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_488318e23415]

