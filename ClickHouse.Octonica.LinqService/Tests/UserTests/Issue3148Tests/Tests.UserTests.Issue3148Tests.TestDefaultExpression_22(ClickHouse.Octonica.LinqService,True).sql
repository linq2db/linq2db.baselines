BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r_1.PersonID,
	r_1.Taxonomy
FROM
	Person t1
		LEFT JOIN (
			SELECT
				0 as PersonID,
				toString(NULL) as Taxonomy
			FROM
				Doctor r
		) r_1 ON 1 = 0

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r_1.PersonID,
	r_1.Taxonomy
FROM
	Person t1
		LEFT JOIN (
			SELECT
				0 as PersonID,
				toString(NULL) as Taxonomy
			FROM
				Doctor r
		) r_1 ON 1 = 0

