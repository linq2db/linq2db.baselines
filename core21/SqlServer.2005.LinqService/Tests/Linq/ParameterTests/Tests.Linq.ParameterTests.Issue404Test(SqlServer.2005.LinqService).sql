﻿BeforeExecute
-- SqlServer.2005

CREATE TABLE [Table404One]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- SqlServer.2005

INSERT INTO [Table404One]
(
	[Id]
)
SELECT 1 UNION ALL
SELECT 2

BeforeExecute
-- SqlServer.2005

CREATE TABLE [Table404Two]
(
	[Id]           Int NOT NULL,
	[Usage]        Int NOT NULL,
	[FirstTableId] Int NOT NULL
)

BeforeExecute
-- SqlServer.2005

INSERT INTO [Table404Two]
(
	[Id],
	[Usage],
	[FirstTableId]
)
SELECT 1,0,1 UNION ALL
SELECT 2,0,1 UNION ALL
SELECT 3,1,1 UNION ALL
SELECT 4,0,2 UNION ALL
SELECT 5,1,2 UNION ALL
SELECT 6,1,2

BeforeExecute
-- SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	[key_data_result].[Id],
	[_v].[Id],
	[_v].[Usage],
	[_v].[FirstTableId]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			(
				SELECT TOP (@take)
					[c_1].[Id]
				FROM
					[Table404One] [c_1]
			) [t1]
	) [key_data_result]
		INNER JOIN [Table404Two] [_v] ON [_v].[FirstTableId] = [key_data_result].[Id]

BeforeExecute
-- SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[c_1].[Id]
FROM
	[Table404One] [c_1]

BeforeExecute
-- SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @Usage_2 Int -- Int32
SET     @Usage_2 = 0

SELECT
	[key_data_result].[Id],
	[_v].[Id],
	[_v].[Usage],
	[_v].[FirstTableId]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			(
				SELECT TOP (@take)
					[c_1].[Id]
				FROM
					[Table404One] [c_1]
			) [t1]
	) [key_data_result]
		INNER JOIN [Table404Two] [_v] ON [_v].[Usage] = @Usage_2 AND [_v].[FirstTableId] = [key_data_result].[Id]

BeforeExecute
-- SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[c_1].[Id]
FROM
	[Table404One] [c_1]

BeforeExecute
-- SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @Usage_2 Int -- Int32
SET     @Usage_2 = 1

SELECT
	[key_data_result].[Id],
	[_v].[Id],
	[_v].[Usage],
	[_v].[FirstTableId]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			(
				SELECT TOP (@take)
					[c_1].[Id]
				FROM
					[Table404One] [c_1]
			) [t1]
	) [key_data_result]
		INNER JOIN [Table404Two] [_v] ON [_v].[Usage] = @Usage_2 AND [_v].[FirstTableId] = [key_data_result].[Id]

BeforeExecute
-- SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[c_1].[Id]
FROM
	[Table404One] [c_1]

BeforeExecute
-- SqlServer.2005

DROP TABLE [Table404Two]

BeforeExecute
-- SqlServer.2005

DROP TABLE [Table404One]

BeforeExecute
-- SqlServer.2005

CREATE TABLE [Table404One]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- SqlServer.2005

INSERT INTO [Table404One]
(
	[Id]
)
SELECT 1 UNION ALL
SELECT 2

BeforeExecute
-- SqlServer.2005

CREATE TABLE [Table404Two]
(
	[Id]           Int NOT NULL,
	[Usage]        Int NOT NULL,
	[FirstTableId] Int NOT NULL
)

BeforeExecute
-- SqlServer.2005

INSERT INTO [Table404Two]
(
	[Id],
	[Usage],
	[FirstTableId]
)
SELECT 1,0,1 UNION ALL
SELECT 2,0,1 UNION ALL
SELECT 3,1,1 UNION ALL
SELECT 4,0,2 UNION ALL
SELECT 5,1,2 UNION ALL
SELECT 6,1,2

BeforeExecute
-- SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	[key_data_result].[Id],
	[_v].[Id],
	[_v].[Usage],
	[_v].[FirstTableId]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			(
				SELECT TOP (@take)
					[c_1].[Id]
				FROM
					[Table404One] [c_1]
			) [t1]
	) [key_data_result]
		INNER JOIN [Table404Two] [_v] ON [_v].[FirstTableId] = [key_data_result].[Id]

BeforeExecute
-- SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[c_1].[Id]
FROM
	[Table404One] [c_1]

BeforeExecute
-- SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @Usage_2 Int -- Int32
SET     @Usage_2 = 0

SELECT
	[key_data_result].[Id],
	[_v].[Id],
	[_v].[Usage],
	[_v].[FirstTableId]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			(
				SELECT TOP (@take)
					[c_1].[Id]
				FROM
					[Table404One] [c_1]
			) [t1]
	) [key_data_result]
		INNER JOIN [Table404Two] [_v] ON [_v].[Usage] = @Usage_2 AND [_v].[FirstTableId] = [key_data_result].[Id]

BeforeExecute
-- SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[c_1].[Id]
FROM
	[Table404One] [c_1]

BeforeExecute
-- SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @Usage_2 Int -- Int32
SET     @Usage_2 = 1

SELECT
	[key_data_result].[Id],
	[_v].[Id],
	[_v].[Usage],
	[_v].[FirstTableId]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			(
				SELECT TOP (@take)
					[c_1].[Id]
				FROM
					[Table404One] [c_1]
			) [t1]
	) [key_data_result]
		INNER JOIN [Table404Two] [_v] ON [_v].[Usage] = @Usage_2 AND [_v].[FirstTableId] = [key_data_result].[Id]

BeforeExecute
-- SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[c_1].[Id]
FROM
	[Table404One] [c_1]

BeforeExecute
-- SqlServer.2005

DROP TABLE [Table404Two]

BeforeExecute
-- SqlServer.2005

DROP TABLE [Table404One]

