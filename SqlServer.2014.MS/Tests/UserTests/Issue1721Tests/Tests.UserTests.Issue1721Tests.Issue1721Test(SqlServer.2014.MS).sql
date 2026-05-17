-- SqlServer.2014.MS SqlServer.2014

CREATE TABLE [tempdb]..[#I1721Model]
(
	[TestDateTime2]           DateTime2      NOT NULL,
	[TestDateTimeOffset]      DateTimeOffset NOT NULL,
	[TestTime]                Time           NOT NULL,
	[TestDefaultPrecision]    DateTime2      NOT NULL,
	[TestNonDefaultPrecision] DateTime2(0)   NOT NULL,
	[TestNonZeroPrecision]    DateTime2(1)   NOT NULL
)

-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[tempdb]..[#I1721Model]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#I1721Model]

