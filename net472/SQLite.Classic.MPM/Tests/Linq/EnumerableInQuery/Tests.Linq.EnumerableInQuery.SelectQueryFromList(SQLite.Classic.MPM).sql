﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id_1  -- Int32
SET     @Id_1 = 1
DECLARE @Value_2  -- Int32
SET     @Value_2 = 11
DECLARE @Id_2  -- Int32
SET     @Id_2 = 2
DECLARE @Value_3  -- Int32
SET     @Value_3 = 22
DECLARE @Id_3  -- Int32
SET     @Id_3 = 3
DECLARE @Value_4  -- Int32
SET     @Value_4 = 33
DECLARE @Id_4  -- Int32
SET     @Id_4 = 4
DECLARE @Value_5  -- Int32
SET     @Value_5 = 44

WITH [CTE_1] ([Id], [Value])
AS
(
	SELECT
		[t5].[Id],
		[t5].[Value_1]
	FROM
		(
			SELECT
				[t3].[Id],
				[t3].[Value_1]
			FROM
				(
					SELECT
						[t1].[Id],
						[t1].[Value_1]
					FROM
						(
							SELECT
								@Id_1 as [Id],
								@Value_2 as [Value_1]
						) [t1]
					UNION ALL
					SELECT
						[t2].[Id],
						[t2].[Value_1]
					FROM
						(
							SELECT
								@Id_2 as [Id],
								@Value_3 as [Value_1]
						) [t2]
				) [t3]
			UNION ALL
			SELECT
				[t4].[Id],
				[t4].[Value_1]
			FROM
				(
					SELECT
						@Id_3 as [Id],
						@Value_4 as [Value_1]
				) [t4]
		) [t5]
	UNION ALL
	SELECT
		[t6].[Id],
		[t6].[Value_1]
	FROM
		(
			SELECT
				@Id_4 as [Id],
				@Value_5 as [Value_1]
		) [t6]
)
SELECT
	[t7].[Id],
	[t7].[Value]
FROM
	[CTE_1] [t7]

