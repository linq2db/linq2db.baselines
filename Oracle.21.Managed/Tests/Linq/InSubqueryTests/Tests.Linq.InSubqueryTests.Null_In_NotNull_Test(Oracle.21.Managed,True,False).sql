-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t.ID
FROM
	"test_in_1" t
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"test_in_2" p
		WHERE
			t.ID = p.ID
	)

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1.ID
FROM
	"test_in_1" t1

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1.ID
FROM
	"test_in_2" t1

