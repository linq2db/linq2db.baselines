﻿BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Table404One]', N'U') IS NOT NULL)
	DROP TABLE [Table404One]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Table404One]', N'U') IS NULL)
	CREATE TABLE [Table404One]
	(
		[Id] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2014

INSERT INTO [Table404One]
(
	[Id]
)
VALUES
(1),
(2)

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Table404Two]', N'U') IS NOT NULL)
	DROP TABLE [Table404Two]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Table404Two]', N'U') IS NULL)
	CREATE TABLE [Table404Two]
	(
		[Id]           Int NOT NULL,
		[Usage]        Int NOT NULL,
		[FirstTableId] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2014

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
-- SqlServer.2014

SELECT
	[key_data_result].[Id],
	[_v].[Id],
	[_v].[Usage],
	[_v].[FirstTableId]
FROM
	(
		SELECT DISTINCT
			[c_1].[Id]
		FROM
			[Table404One] [c_1]
	) [key_data_result]
		INNER JOIN [Table404Two] [_v] ON [_v].[FirstTableId] = [key_data_result].[Id]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2014

SELECT
	[c_1].[Id]
FROM
	[Table404One] [c_1]

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2014
DECLARE @Usage Int -- Int32
SET     @Usage = 0

SELECT
	[key_data_result].[Id],
	[_v].[Id],
	[_v].[Usage],
	[_v].[FirstTableId]
FROM
	(
		SELECT DISTINCT
			[c_1].[Id]
		FROM
			[Table404One] [c_1]
	) [key_data_result]
		INNER JOIN [Table404Two] [_v] ON [_v].[Usage] = @Usage AND [_v].[FirstTableId] = [key_data_result].[Id]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2014

SELECT
	[c_1].[Id]
FROM
	[Table404One] [c_1]

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2014
DECLARE @Usage Int -- Int32
SET     @Usage = 1

SELECT
	[key_data_result].[Id],
	[_v].[Id],
	[_v].[Usage],
	[_v].[FirstTableId]
FROM
	(
		SELECT DISTINCT
			[c_1].[Id]
		FROM
			[Table404One] [c_1]
	) [key_data_result]
		INNER JOIN [Table404Two] [_v] ON [_v].[Usage] = @Usage AND [_v].[FirstTableId] = [key_data_result].[Id]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2014

SELECT
	[c_1].[Id]
FROM
	[Table404One] [c_1]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Table404Two]', N'U') IS NOT NULL)
	DROP TABLE [Table404Two]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Table404One]', N'U') IS NOT NULL)
	DROP TABLE [Table404One]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Table404One]', N'U') IS NOT NULL)
	DROP TABLE [Table404One]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Table404One]', N'U') IS NULL)
	CREATE TABLE [Table404One]
	(
		[Id] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2014

INSERT INTO [Table404One]
(
	[Id]
)
VALUES
(1),
(2)

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Table404Two]', N'U') IS NOT NULL)
	DROP TABLE [Table404Two]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Table404Two]', N'U') IS NULL)
	CREATE TABLE [Table404Two]
	(
		[Id]           Int NOT NULL,
		[Usage]        Int NOT NULL,
		[FirstTableId] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2014

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
-- SqlServer.2014

SELECT
	[key_data_result].[Id],
	[_v].[Id],
	[_v].[Usage],
	[_v].[FirstTableId]
FROM
	(
		SELECT DISTINCT
			[c_1].[Id]
		FROM
			[Table404One] [c_1]
	) [key_data_result]
		INNER JOIN [Table404Two] [_v] ON [_v].[FirstTableId] = [key_data_result].[Id]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2014

SELECT
	[c_1].[Id]
FROM
	[Table404One] [c_1]

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2014
DECLARE @Usage Int -- Int32
SET     @Usage = 0

SELECT
	[key_data_result].[Id],
	[_v].[Id],
	[_v].[Usage],
	[_v].[FirstTableId]
FROM
	(
		SELECT DISTINCT
			[c_1].[Id]
		FROM
			[Table404One] [c_1]
	) [key_data_result]
		INNER JOIN [Table404Two] [_v] ON [_v].[Usage] = @Usage AND [_v].[FirstTableId] = [key_data_result].[Id]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2014

SELECT
	[c_1].[Id]
FROM
	[Table404One] [c_1]

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2014
DECLARE @Usage Int -- Int32
SET     @Usage = 1

SELECT
	[key_data_result].[Id],
	[_v].[Id],
	[_v].[Usage],
	[_v].[FirstTableId]
FROM
	(
		SELECT DISTINCT
			[c_1].[Id]
		FROM
			[Table404One] [c_1]
	) [key_data_result]
		INNER JOIN [Table404Two] [_v] ON [_v].[Usage] = @Usage AND [_v].[FirstTableId] = [key_data_result].[Id]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2014

SELECT
	[c_1].[Id]
FROM
	[Table404One] [c_1]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Table404Two]', N'U') IS NOT NULL)
	DROP TABLE [Table404Two]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Table404One]', N'U') IS NOT NULL)
	DROP TABLE [Table404One]

