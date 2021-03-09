﻿BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

CREATE TABLE [SampleClass]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL
)

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	DateAdd(day, 1, CURRENT_TIMESTAMP),
	DateAdd(day, 2, CURRENT_TIMESTAMP)

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

IF (OBJECT_ID(N'[SampleClass]', N'U') IS NOT NULL)
	DROP TABLE [SampleClass]

