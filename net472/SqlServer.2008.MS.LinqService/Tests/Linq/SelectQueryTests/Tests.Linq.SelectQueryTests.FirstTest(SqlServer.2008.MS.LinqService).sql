﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

CREATE TABLE [SampleClass]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL
)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT TOP (1)
	DateAdd(day, 1, CURRENT_TIMESTAMP),
	DateAdd(day, 2, CURRENT_TIMESTAMP)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[SampleClass]', N'U') IS NOT NULL)
	DROP TABLE [SampleClass]

