-- Informix.DB2 Informix

SELECT
	t.PK,
	t.ID,
	t.GV
FROM
	test_in_1 t
WHERE
	NOT EXISTS(
		SELECT
			*
		FROM
			test_in_2 p
		WHERE
			t.ID = p.ID
	)

-- Informix.DB2 Informix

SELECT
	t1.PK,
	t1.ID,
	t1.GV
FROM
	test_in_1 t1

-- Informix.DB2 Informix

SELECT
	t1.PK,
	t1.ID
FROM
	test_in_2 t1

