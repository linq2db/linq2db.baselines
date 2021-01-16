﻿BeforeExecute
-- SqlCe

DROP TABLE [Issue913Test]

BeforeExecute
-- SqlCe

CREATE TABLE [Issue913Test]
(
	[InstrumentID]  Int      NOT NULL,
	[TradingStatus] NChar(1)     NULL,

	CONSTRAINT [PK_Issue913Test] PRIMARY KEY ([InstrumentID])
)

BeforeExecute
-- SqlCe

INSERT INTO [Issue913Test]
(
	[InstrumentID],
	[TradingStatus]
)
SELECT 1,NULL UNION ALL
SELECT 2,'A' UNION ALL
SELECT 3,'D'

BeforeExecute
-- SqlCe

DROP TABLE [Issue913Test]

