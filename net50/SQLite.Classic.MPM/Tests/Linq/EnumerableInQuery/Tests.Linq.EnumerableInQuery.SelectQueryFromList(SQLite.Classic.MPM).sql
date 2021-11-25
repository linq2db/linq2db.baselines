﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Value_1  -- Int32
SET     @Value_1 = 11
DECLARE @Id_1  -- Int32
SET     @Id_1 = 2
DECLARE @Value_2  -- Int32
SET     @Value_2 = 22
DECLARE @Id_2  -- Int32
SET     @Id_2 = 3
DECLARE @Value_3  -- Int32
SET     @Value_3 = 33
DECLARE @Id_3  -- Int32
SET     @Id_3 = 4
DECLARE @Value_4  -- Int32
SET     @Value_4 = 44

WITH [CTE_1] ([Id], [Value])
AS
(
	SELECT
		@Id,
		@Value_1
	UNION ALL
	SELECT
		@Id_1,
		@Value_2
	UNION ALL
	SELECT
		@Id_2,
		@Value_3
	UNION ALL
	SELECT
		@Id_3,
		@Value_4
)
SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[CTE_1] [t1]

