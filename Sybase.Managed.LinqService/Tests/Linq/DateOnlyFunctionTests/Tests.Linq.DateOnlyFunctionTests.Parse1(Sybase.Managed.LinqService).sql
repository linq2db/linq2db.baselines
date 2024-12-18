BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Transactions') IS NOT NULL)
	DROP TABLE [Transactions]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Transactions') IS NULL)
	EXECUTE('
		CREATE TABLE [Transactions]
		(
			[TransactionId]   Int  NOT NULL,
			[TransactionDate] Date NOT NULL,

			CONSTRAINT [PK_Transactions] PRIMARY KEY CLUSTERED ([TransactionId])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @TransactionId Integer -- Int32
SET     @TransactionId = 1
DECLARE @TransactionDate Date
SET     @TransactionDate = '2020-02-29'

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
-- Sybase.Managed Sybase
DECLARE @TransactionId Integer -- Int32
SET     @TransactionId = 2
DECLARE @TransactionDate Date
SET     @TransactionDate = '2021-02-28'

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
-- Sybase.Managed Sybase
DECLARE @TransactionId Integer -- Int32
SET     @TransactionId = 3
DECLARE @TransactionDate Date
SET     @TransactionDate = '2019-02-28'

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
-- Sybase.Managed Sybase
DECLARE @TransactionId Integer -- Int32
SET     @TransactionId = 4
DECLARE @TransactionDate Date
SET     @TransactionDate = '2020-03-29'

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
-- Sybase.Managed Sybase
DECLARE @TransactionId Integer -- Int32
SET     @TransactionId = 5
DECLARE @TransactionDate Date
SET     @TransactionDate = '2020-01-29'

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
-- Sybase.Managed Sybase
DECLARE @TransactionId Integer -- Int32
SET     @TransactionId = 6
DECLARE @TransactionDate Date
SET     @TransactionDate = '2020-03-01'

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
-- Sybase.Managed Sybase
DECLARE @TransactionId Integer -- Int32
SET     @TransactionId = 7
DECLARE @TransactionDate Date
SET     @TransactionDate = '2020-02-28'

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
-- Sybase.Managed Sybase
DECLARE @TransactionId Integer -- Int32
SET     @TransactionId = 8
DECLARE @TransactionDate Date
SET     @TransactionDate = '2020-08-09'

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
-- Sybase.Managed Sybase
DECLARE @TransactionId Integer -- Int32
SET     @TransactionId = 9
DECLARE @TransactionDate Date
SET     @TransactionDate = '2021-08-09'

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
-- Sybase.Managed Sybase
DECLARE @TransactionId Integer -- Int32
SET     @TransactionId = 10
DECLARE @TransactionDate Date
SET     @TransactionDate = '2019-08-09'

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
-- Sybase.Managed Sybase
DECLARE @TransactionId Integer -- Int32
SET     @TransactionId = 11
DECLARE @TransactionDate Date
SET     @TransactionDate = '2020-09-09'

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
-- Sybase.Managed Sybase
DECLARE @TransactionId Integer -- Int32
SET     @TransactionId = 12
DECLARE @TransactionDate Date
SET     @TransactionDate = '2020-07-09'

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
-- Sybase.Managed Sybase
DECLARE @TransactionId Integer -- Int32
SET     @TransactionId = 13
DECLARE @TransactionDate Date
SET     @TransactionDate = '2020-08-10'

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
-- Sybase.Managed Sybase
DECLARE @TransactionId Integer -- Int32
SET     @TransactionId = 14
DECLARE @TransactionDate Date
SET     @TransactionDate = '2020-08-08'

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
-- Sybase.Managed Sybase

SELECT
	CAST('2010-01-' + right(replicate('0',2) + cast([t].[TransactionId] as varchar(255)),2) AS Date)
FROM
	[Transactions] [t]
WHERE
	DatePart(day, CAST('2010-01-' + right(replicate('0',2) + cast([t].[TransactionId] as varchar(255)),2) AS Date)) > 0 AND
	DatePart(day, CAST('2010-01-' + right(replicate('0',2) + cast([t].[TransactionId] as varchar(255)),2) AS Date)) IS NOT NULL

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[TransactionId],
	[t1].[TransactionDate]
FROM
	[Transactions] [t1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Transactions') IS NOT NULL)
	DROP TABLE [Transactions]

