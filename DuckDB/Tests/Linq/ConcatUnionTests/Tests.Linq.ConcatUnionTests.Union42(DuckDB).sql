-- DuckDB

SELECT
	p_1.val
FROM
	(
		SELECT
			p.ParentID as id,
			CAST(True AS BOOLEAN) as val
		FROM
			Parent p
		UNION
		SELECT
			ch.ParentID as id,
			CAST(False AS BOOLEAN) as val
		FROM
			Child ch
	) p_1

