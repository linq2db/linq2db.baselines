﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Value  -- Int32
SET     @Value = 11
DECLARE @Id_1  -- Int32
SET     @Id_1 = 2
DECLARE @Value_1  -- Int32
SET     @Value_1 = 22
DECLARE @Id_2  -- Int32
SET     @Id_2 = 3
DECLARE @Value_2  -- Int32
SET     @Value_2 = 33
DECLARE @Id_3  -- Int32
SET     @Id_3 = 4
DECLARE @Value_3  -- Int32
SET     @Value_3 = 44

WITH [CTE_1] ([Id], [Value])
AS
(
	SELECT
		[t1].[Id],
		[t1].[Value_1]
	FROM
		(
			SELECT
				@Id as [Id],
				@Value as [Value_1]
		) [t1]
	UNION ALL
	SELECT
		[t2].[Id],
		[t2].[Value_1]
	FROM
		(
			SELECT
				@Id_1 as [Id],
				@Value_1 as [Value_1]
		) [t2]
	UNION ALL
	SELECT
		[t3].[Id],
		[t3].[Value_1]
	FROM
		(
			SELECT
				@Id_2 as [Id],
				@Value_2 as [Value_1]
		) [t3]
	UNION ALL
	SELECT
		[t4].[Id],
		[t4].[Value_1]
	FROM
		(
			SELECT
				@Id_3 as [Id],
				@Value_3 as [Value_1]
		) [t4]
)
SELECT
	[t5].[Id],
	[t5].[Value]
FROM
	[CTE_1] [t5]

