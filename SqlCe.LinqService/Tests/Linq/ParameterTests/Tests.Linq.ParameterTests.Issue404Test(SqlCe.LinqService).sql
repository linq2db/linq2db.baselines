﻿BeforeExecute
--  SqlCe

SELECT
	[m_1].[Id],
	[d].[Id] as [Id_1],
	[d].[Usage] as [Usage_1],
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
--  SqlCe

SELECT
	[t1].[Id]
FROM
	[Table404One] [t1]

BeforeExecute
--  SqlCe
DECLARE @cond Int -- Int32
SET     @cond = 0

SELECT
	[m_1].[Id],
	[d].[Id] as [Id_1],
	[d].[Usage] as [Usage_1],
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
	[d].[Usage] = @cond

BeforeExecute
--  SqlCe

SELECT
	[t1].[Id]
FROM
	[Table404One] [t1]

BeforeExecute
--  SqlCe
DECLARE @cond Int -- Int32
SET     @cond = 1

SELECT
	[m_1].[Id],
	[d].[Id] as [Id_1],
	[d].[Usage] as [Usage_1],
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
	[d].[Usage] = @cond

BeforeExecute
--  SqlCe

SELECT
	[t1].[Id]
FROM
	[Table404One] [t1]

BeforeExecute
--  SqlCe

SELECT
	[m_1].[Id],
	[d].[Id] as [Id_1],
	[d].[Usage] as [Usage_1],
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
--  SqlCe

SELECT
	[t1].[Id]
FROM
	[Table404One] [t1]

BeforeExecute
--  SqlCe
DECLARE @cond Int -- Int32
SET     @cond = 0

SELECT
	[m_1].[Id],
	[d].[Id] as [Id_1],
	[d].[Usage] as [Usage_1],
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
	[d].[Usage] = @cond

BeforeExecute
--  SqlCe

SELECT
	[t1].[Id]
FROM
	[Table404One] [t1]

BeforeExecute
--  SqlCe
DECLARE @cond Int -- Int32
SET     @cond = 1

SELECT
	[m_1].[Id],
	[d].[Id] as [Id_1],
	[d].[Usage] as [Usage_1],
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
	[d].[Usage] = @cond

BeforeExecute
--  SqlCe

SELECT
	[t1].[Id]
FROM
	[Table404One] [t1]

