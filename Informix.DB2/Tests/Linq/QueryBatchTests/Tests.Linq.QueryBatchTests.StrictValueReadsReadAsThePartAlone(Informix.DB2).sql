-- Informix.DB2 Informix
SELECT
	t3.not_null,
	t3.Value_1,
	t4.not_null,
	t4.Name,
	sub.Id,
	sub.Name,
	(
		SELECT
			COUNT(*)
		FROM
			BatchItem t5
	)
FROM
	(
		SELECT
			t2.Id,
			t2.Name
		FROM
			(
				SELECT
					1 as c1
				FROM table(set{1})
			) t1,
			(
				SELECT FIRST 1
					i.Id,
					i.Name
				FROM
					BatchItem i
				WHERE
					i.Id = 4
			) t2
	) sub
		LEFT JOIN (
			SELECT FIRST 1
				1 as not_null,
				i_1."Value" as Value_1
			FROM
				BatchItem i_1
			WHERE
				i_1.Id = 3
		) t3 ON 1=1
		LEFT JOIN (
			SELECT FIRST 1
				1 as not_null,
				i_2.Name
			FROM
				BatchItem i_2
			WHERE
				i_2.Id = 5
		) t4 ON 1=1

-- Informix.DB2 Informix
SELECT FIRST 1
	i."Value"
FROM
	BatchItem i
WHERE
	i.Id = 3

-- Informix.DB2 Informix
SELECT FIRST 1
	i.Name
FROM
	BatchItem i
WHERE
	i.Id = 5

