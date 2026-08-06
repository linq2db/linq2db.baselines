-- Informix.DB2 Informix
SELECT
	t.Id,
	t."Value",
	s.c1
FROM
	SampleClass t
		INNER JOIN (
			SELECT
				1 as c1
			FROM table(set{1})
		) s ON 1 = t.Id

