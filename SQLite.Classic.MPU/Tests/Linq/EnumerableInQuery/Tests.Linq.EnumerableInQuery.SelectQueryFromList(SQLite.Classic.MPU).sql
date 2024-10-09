BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 4
DECLARE @Value  -- Int32
SET     @Value = 44
DECLARE @Id_1  -- Int32
SET     @Id_1 = 3
DECLARE @Value_1  -- Int32
SET     @Value_1 = 33
DECLARE @Id_2  -- Int32
SET     @Id_2 = 1
DECLARE @Id_3  -- Int32
SET     @Id_3 = 2
DECLARE @Value_2  -- Int32
SET     @Value_2 = 11
DECLARE @Value_3  -- Int32
SET     @Value_3 = 22

WITH [CTE_1] ([Id], [Value_1])
AS
(
	SELECT
		CASE
			WHEN [t3].[projection__set_id__] = 2 THEN [t3].[Id]
			ELSE @Id
		END,
		CASE
			WHEN [t3].[projection__set_id__] = 2 THEN [t3].[Value_1]
			ELSE @Value
		END
	FROM
		(
			SELECT
				CASE
					WHEN [t2].[Id] IS NOT NULL THEN [t2].[Id]
					ELSE @Id_1
				END as [Id],
				CASE
					WHEN [t2].[Id] IS NOT NULL THEN [t2].[Value_1]
					ELSE @Value_1
				END as [Value_1],
				CAST(2 AS INTEGER) as [projection__set_id__]
			FROM
				(
					SELECT
						CASE
							WHEN [t1].[projection__set_id__] = 0 THEN @Id_2
							ELSE @Id_3
						END as [Id],
						CASE
							WHEN [t1].[projection__set_id__] = 0 THEN @Value_2
							ELSE @Value_3
						END as [Value_1]
					FROM
						(
							SELECT
								CAST(0 AS INTEGER) as [projection__set_id__]
							UNION ALL
							SELECT
								CAST(1 AS INTEGER) as [projection__set_id__]
						) [t1]
					UNION ALL
					SELECT
						NULL as [Id],
						NULL as [Value_1]
				) [t2]
			UNION ALL
			SELECT
				NULL as [Id],
				NULL as [Value_1],
				CAST(3 AS INTEGER) as [projection__set_id__]
		) [t3]
)
SELECT
	[t4].[Id],
	[t4].[Value_1]
FROM
	[CTE_1] [t4]

