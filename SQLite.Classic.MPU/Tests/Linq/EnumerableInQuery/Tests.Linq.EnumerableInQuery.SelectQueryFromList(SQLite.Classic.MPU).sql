BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
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

WITH [CTE_1] ([Id], [Value_1])
AS
(
	SELECT
		@Id,
		@Value
	UNION ALL
	SELECT
		@Id_1,
		@Value_1
	UNION ALL
	SELECT
		@Id_2,
		@Value_2
	UNION ALL
	SELECT
		@Id_3,
		@Value_3
)
SELECT
	[t1].[Id],
	[t1].[Value_1]
FROM
	[CTE_1] [t1]

