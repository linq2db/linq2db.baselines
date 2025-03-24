﻿BeforeExecute
--  SqlServer.2016.MS SqlServer.2016

CREATE TABLE [tempdb]..[#I1721Model]
(
	[TestDateTime2]           DateTime2      NOT NULL,
	[TestDateTimeOffset]      DateTimeOffset NOT NULL,
	[TestTime]                Time           NOT NULL,
	[TestDefaultPrecision]    DateTime2      NOT NULL,
	[TestNonDefaultPrecision] DateTime2(0)   NOT NULL,
	[TestNonZeroPrecision]    DateTime2(1)   NOT NULL
)

BeforeExecute
--  SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [tempdb]..[#I1721Model]

