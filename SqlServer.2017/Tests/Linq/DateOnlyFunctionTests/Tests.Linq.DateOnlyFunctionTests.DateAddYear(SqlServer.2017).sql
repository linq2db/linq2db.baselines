﻿BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [Transactions]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[Transactions]', N'U') IS NULL)
	CREATE TABLE [Transactions]
	(
		[TransactionId]   Int  NOT NULL,
		[TransactionDate] Date NOT NULL,

		CONSTRAINT [PK_Transactions] PRIMARY KEY CLUSTERED ([TransactionId])
	)

BeforeExecute
-- SqlServer.2017

INSERT INTO [Transactions]
(
	[TransactionId],
	[TransactionDate]
)
VALUES
(1,DATEFROMPARTS(2020, 2, 29)),
(2,DATEFROMPARTS(2021, 2, 28)),
(3,DATEFROMPARTS(2019, 2, 28)),
(4,DATEFROMPARTS(2020, 3, 29)),
(5,DATEFROMPARTS(2020, 1, 29)),
(6,DATEFROMPARTS(2020, 3, 1)),
(7,DATEFROMPARTS(2020, 2, 28)),
(8,DATEFROMPARTS(2020, 8, 9)),
(9,DATEFROMPARTS(2021, 8, 9)),
(10,DATEFROMPARTS(2019, 8, 9)),
(11,DATEFROMPARTS(2020, 9, 9)),
(12,DATEFROMPARTS(2020, 7, 9)),
(13,DATEFROMPARTS(2020, 8, 10)),
(14,DATEFROMPARTS(2020, 8, 8))

BeforeExecute
-- SqlServer.2017

SELECT
	DateAdd(year, 12, [t].[TransactionDate])
FROM
	[Transactions] [t]

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [Transactions]

