-- DuckDB

SELECT
	p_2.val
FROM
	(
		SELECT
			p.ParentID as id,
			CAST(True AS BOOLEAN) as val
		FROM
			Parent p
		UNION
		SELECT
			p_1.ParentID as id,
			CAST(False AS BOOLEAN) as val
		FROM
			Parent p_1
		UNION
		SELECT
			ch.ParentID as id,
			CAST(False AS BOOLEAN) as val
		FROM
			Child ch
	) p_2

