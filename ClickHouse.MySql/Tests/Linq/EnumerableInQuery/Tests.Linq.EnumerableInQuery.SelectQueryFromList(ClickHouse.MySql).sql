BeforeExecute
-- ClickHouse.MySql ClickHouse

WITH CTE_1 AS
(
	SELECT
		CASE
			WHEN t3.projection__set_id__ = 2 THEN t3.Id
			ELSE 4
		END as Id,
		CASE
			WHEN t3.projection__set_id__ = 2 THEN t3.Value_1
			ELSE 44
		END as Value_1
	FROM
		(
			SELECT
				CASE
					WHEN t2.Id IS NOT NULL THEN t2.Id
					ELSE 3
				END as Id,
				CASE
					WHEN t2.Id IS NOT NULL THEN t2.Value_1
					ELSE 33
				END as Value_1,
				toInt32(2) as projection__set_id__
			FROM
				(
					SELECT
						CASE
							WHEN t1.projection__set_id__ = 0 THEN 1
							ELSE 2
						END as Id,
						CASE
							WHEN t1.projection__set_id__ = 0 THEN 11
							ELSE 22
						END as Value_1
					FROM
						(
							SELECT
								toInt32(0) as projection__set_id__
							UNION ALL
							SELECT
								toInt32(1) as projection__set_id__
						) t1
					UNION ALL
					SELECT
						toInt32(NULL) as Id,
						toInt32(NULL) as Value_1
				) t2
			UNION ALL
			SELECT
				toInt32(NULL) as Id,
				toInt32(NULL) as Value_1,
				toInt32(3) as projection__set_id__
		) t3
)
SELECT
	t4.Id,
	t4.Value_1
FROM
	CTE_1 t4

