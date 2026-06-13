-- YDB Ydb

SELECT
	p_2.val as val
FROM
	(
		SELECT
			p.ParentID as id,
			Unwrap(CAST(true AS Bool)) as val
		FROM
			Parent p
		UNION
		SELECT
			p_1.ParentID as id,
			Unwrap(CAST(false AS Bool)) as val
		FROM
			Parent p_1
		UNION
		SELECT
			ch.ParentID as id,
			Unwrap(CAST(false AS Bool)) as val
		FROM
			Child ch
	) p_2

