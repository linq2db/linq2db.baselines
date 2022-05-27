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
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 1
DECLARE @TransactionDate Date
SET     @TransactionDate = DATETIME2FROMPARTS(2020, 2, 29, 0, 0, 0, 0, 7)

INSERT INTO [Transactions]
(
	[TransactionId],
	[TransactionDate]
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- SqlServer.2017
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 2
DECLARE @TransactionDate Date
SET     @TransactionDate = DATETIME2FROMPARTS(2021, 2, 28, 0, 0, 0, 0, 7)

INSERT INTO [Transactions]
(
	[TransactionId],
	[TransactionDate]
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- SqlServer.2017
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 3
DECLARE @TransactionDate Date
SET     @TransactionDate = DATETIME2FROMPARTS(2019, 2, 28, 0, 0, 0, 0, 7)

INSERT INTO [Transactions]
(
	[TransactionId],
	[TransactionDate]
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- SqlServer.2017
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 4
DECLARE @TransactionDate Date
SET     @TransactionDate = DATETIME2FROMPARTS(2020, 3, 29, 0, 0, 0, 0, 7)

INSERT INTO [Transactions]
(
	[TransactionId],
	[TransactionDate]
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- SqlServer.2017
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 5
DECLARE @TransactionDate Date
SET     @TransactionDate = DATETIME2FROMPARTS(2020, 1, 29, 0, 0, 0, 0, 7)

INSERT INTO [Transactions]
(
	[TransactionId],
	[TransactionDate]
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- SqlServer.2017
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 6
DECLARE @TransactionDate Date
SET     @TransactionDate = DATETIME2FROMPARTS(2020, 3, 1, 0, 0, 0, 0, 7)

INSERT INTO [Transactions]
(
	[TransactionId],
	[TransactionDate]
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- SqlServer.2017
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 7
DECLARE @TransactionDate Date
SET     @TransactionDate = DATETIME2FROMPARTS(2020, 2, 28, 0, 0, 0, 0, 7)

INSERT INTO [Transactions]
(
	[TransactionId],
	[TransactionDate]
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- SqlServer.2017
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 8
DECLARE @TransactionDate Date
SET     @TransactionDate = DATETIME2FROMPARTS(2020, 8, 9, 0, 0, 0, 0, 7)

INSERT INTO [Transactions]
(
	[TransactionId],
	[TransactionDate]
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- SqlServer.2017
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 9
DECLARE @TransactionDate Date
SET     @TransactionDate = DATETIME2FROMPARTS(2021, 8, 9, 0, 0, 0, 0, 7)

INSERT INTO [Transactions]
(
	[TransactionId],
	[TransactionDate]
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- SqlServer.2017
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 10
DECLARE @TransactionDate Date
SET     @TransactionDate = DATETIME2FROMPARTS(2019, 8, 9, 0, 0, 0, 0, 7)

INSERT INTO [Transactions]
(
	[TransactionId],
	[TransactionDate]
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- SqlServer.2017
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 11
DECLARE @TransactionDate Date
SET     @TransactionDate = DATETIME2FROMPARTS(2020, 9, 9, 0, 0, 0, 0, 7)

INSERT INTO [Transactions]
(
	[TransactionId],
	[TransactionDate]
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- SqlServer.2017
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 12
DECLARE @TransactionDate Date
SET     @TransactionDate = DATETIME2FROMPARTS(2020, 7, 9, 0, 0, 0, 0, 7)

INSERT INTO [Transactions]
(
	[TransactionId],
	[TransactionDate]
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- SqlServer.2017
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 13
DECLARE @TransactionDate Date
SET     @TransactionDate = DATETIME2FROMPARTS(2020, 8, 10, 0, 0, 0, 0, 7)

INSERT INTO [Transactions]
(
	[TransactionId],
	[TransactionDate]
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- SqlServer.2017
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 14
DECLARE @TransactionDate Date
SET     @TransactionDate = DATETIME2FROMPARTS(2020, 8, 8, 0, 0, 0, 0, 7)

INSERT INTO [Transactions]
(
	[TransactionId],
	[TransactionDate]
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- SqlServer.2017

SELECT
	DateAdd(dayofyear, 3, [t].[TransactionDate])
FROM
	[Transactions] [t]

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [Transactions]

