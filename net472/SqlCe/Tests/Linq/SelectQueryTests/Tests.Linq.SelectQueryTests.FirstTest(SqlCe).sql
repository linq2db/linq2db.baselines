﻿BeforeExecute
-- SqlCe

CREATE TABLE [SampleClass]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL
)

BeforeExecute
-- SqlCe

SELECT TOP (1)
	DateAdd(day, 1, GetDate()),
	DateAdd(day, 2, GetDate())

BeforeExecute
-- SqlCe

DROP TABLE [SampleClass]

