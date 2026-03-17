-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t.PK,
	t.ID
FROM
	"test_in_1" t
WHERE
	t.ID IN (
		SELECT
			p.ID
		FROM
			"test_in_2" p
	)

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1.PK,
	t1.ID
FROM
	"test_in_1" t1

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1.PK,
	t1.ID
FROM
	"test_in_2" t1

