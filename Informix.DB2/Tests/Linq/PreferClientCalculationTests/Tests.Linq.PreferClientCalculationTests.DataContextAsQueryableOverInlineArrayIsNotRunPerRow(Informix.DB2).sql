-- Informix.DB2 Informix
SELECT
	e.Id,
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT j.Value1::Int AS "item" FROM table(set{1})
				UNION ALL
				SELECT 5::Int FROM table(set{1})) t1
		WHERE
			0 = t1."item"
	)
FROM
	MissedJoinEntity e
		LEFT JOIN MissedJoinEntity j ON j.Id = e.Id + 1000

