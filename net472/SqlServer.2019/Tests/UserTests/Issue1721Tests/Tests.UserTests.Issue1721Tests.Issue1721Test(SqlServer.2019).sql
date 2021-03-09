﻿BeforeExecute
-- SqlServer.2019 SqlServer.2017

CREATE TABLE [#I1721Model]
(
	[TestDateTime2]           DateTime2      NOT NULL,
	[TestDateTimeOffset]      DateTimeOffset NOT NULL,
	[TestTime]                Time           NOT NULL,
	[TestDefaultPrecision]    DateTime2      NOT NULL,
	[TestNonDefaultPrecision] DateTime2(0)   NOT NULL,
	[TestNonZeroPrecision]    DateTime2(1)   NOT NULL
)

BeforeExecute
-- SqlServer.2019 SqlServer.2017

IF (OBJECT_ID(N'[tempdb]..[#I1721Model]', N'U') IS NOT NULL)
	DROP TABLE [#I1721Model]

