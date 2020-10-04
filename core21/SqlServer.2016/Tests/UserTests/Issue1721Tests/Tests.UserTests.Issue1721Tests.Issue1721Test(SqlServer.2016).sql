BeforeExecute
-- SqlServer.2016 SqlServer.2012

CREATE TABLE [I1721Model]
(
	[TestDateTime2]           DateTime2      NOT NULL,
	[TestDateTimeOffset]      DateTimeOffset NOT NULL,
	[TestTime]                Time           NOT NULL,
	[TestDefaultPrecision]    DateTime2      NOT NULL,
	[TestNonDefaultPrecision] DateTime2(0)   NOT NULL,
	[TestNonZeroPrecision]    DateTime2(1)   NOT NULL
)

BeforeExecute
-- SqlServer.2016 SqlServer.2012

DROP TABLE [I1721Model]

