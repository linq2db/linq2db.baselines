-- YDB Ydb

SELECT
	t1.Taxonomy as Taxonomy
FROM
	(
		SELECT DISTINCT
			s.PersonID as Key_1
		FROM
			Doctor s
	) s_2
		INNER JOIN (
			SELECT
				s_1.Taxonomy as Taxonomy,
				ROW_NUMBER() OVER (PARTITION BY s_1.PersonID ORDER BY s_1.PersonID) as rn,
				s_1.PersonID as PersonID
			FROM
				Doctor s_1
		) t1 ON s_2.Key_1 = t1.PersonID
WHERE
	t1.rn = 1

