-- Informix.DB2 Informix

SELECT
	t.ID
FROM
	test_in_1 t
WHERE
	t.ID IS NULL OR NOT EXISTS(
		SELECT
			*
		FROM
			test_in_2 p
		WHERE
			t.ID = p.ID
	)

-- Informix.DB2 Informix

SELECT
	t1.ID
FROM
	test_in_1 t1

-- Informix.DB2 Informix

SELECT
	t1.ID
FROM
	test_in_2 t1

