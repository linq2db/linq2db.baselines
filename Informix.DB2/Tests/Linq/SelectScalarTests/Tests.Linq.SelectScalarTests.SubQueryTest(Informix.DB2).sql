-- Informix.DB2 Informix

SELECT
	t1.f1
FROM
	(
		SELECT
			1 as c1
		FROM table(set{1})
	) t2
		LEFT JOIN (
			SELECT FIRST 1
				p.Value1 as f1
			FROM
				Parent p
		) t1 ON 1=1

