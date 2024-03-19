BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [Table404One]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

IF (OBJECT_ID(N'[Table404One]', N'U') IS NULL)
	CREATE TABLE [Table404One]
	(
		[Id] Int NOT NULL
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

INSERT INTO [Table404One]
(
	[Id]
)
VALUES
(1),
(2)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [Table404Two]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

IF (OBJECT_ID(N'[Table404Two]', N'U') IS NULL)
	CREATE TABLE [Table404Two]
	(
		[Id]           Int NOT NULL,
		[Usage]        Int NOT NULL,
		[FirstTableId] Int NOT NULL
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

INSERT INTO [Table404Two]
(
	[Id],
	[Usage],
	[FirstTableId]
)
VALUES
(1,0,1),
(2,0,1),
(3,1,1),
(4,0,2),
(5,1,2),
(6,1,2)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[Usage],
	[d].[FirstTableId]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			[Table404One] [t1]
	) [m_1]
		INNER JOIN [Table404Two] [d] ON [m_1].[Id] = [d].[FirstTableId]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t1].[Id]
FROM
	[Table404One] [t1]

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Usage Int -- Int32
SET     @Usage = 0

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[Usage],
	[d].[FirstTableId]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			[Table404One] [t1]
	) [m_1]
		INNER JOIN [Table404Two] [d] ON [m_1].[Id] = [d].[FirstTableId]
WHERE
	[d].[Usage] = @Usage

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t1].[Id]
FROM
	[Table404One] [t1]

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Usage Int -- Int32
SET     @Usage = 1

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[Usage],
	[d].[FirstTableId]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			[Table404One] [t1]
	) [m_1]
		INNER JOIN [Table404Two] [d] ON [m_1].[Id] = [d].[FirstTableId]
WHERE
	[d].[Usage] = @Usage

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t1].[Id]
FROM
	[Table404One] [t1]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [Table404Two]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [Table404One]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [Table404One]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

IF (OBJECT_ID(N'[Table404One]', N'U') IS NULL)
	CREATE TABLE [Table404One]
	(
		[Id] Int NOT NULL
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

INSERT INTO [Table404One]
(
	[Id]
)
VALUES
(1),
(2)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [Table404Two]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

IF (OBJECT_ID(N'[Table404Two]', N'U') IS NULL)
	CREATE TABLE [Table404Two]
	(
		[Id]           Int NOT NULL,
		[Usage]        Int NOT NULL,
		[FirstTableId] Int NOT NULL
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

INSERT INTO [Table404Two]
(
	[Id],
	[Usage],
	[FirstTableId]
)
VALUES
(1,0,1),
(2,0,1),
(3,1,1),
(4,0,2),
(5,1,2),
(6,1,2)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[Usage],
	[d].[FirstTableId]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			[Table404One] [t1]
	) [m_1]
		INNER JOIN [Table404Two] [d] ON [m_1].[Id] = [d].[FirstTableId]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t1].[Id]
FROM
	[Table404One] [t1]

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Usage Int -- Int32
SET     @Usage = 0

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[Usage],
	[d].[FirstTableId]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			[Table404One] [t1]
	) [m_1]
		INNER JOIN [Table404Two] [d] ON [m_1].[Id] = [d].[FirstTableId]
WHERE
	[d].[Usage] = @Usage

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t1].[Id]
FROM
	[Table404One] [t1]

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Usage Int -- Int32
SET     @Usage = 1

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[Usage],
	[d].[FirstTableId]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			[Table404One] [t1]
	) [m_1]
		INNER JOIN [Table404Two] [d] ON [m_1].[Id] = [d].[FirstTableId]
WHERE
	[d].[Usage] = @Usage

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t1].[Id]
FROM
	[Table404One] [t1]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [Table404Two]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [Table404One]

