-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t.ID
FROM
	"test_in_1" t
WHERE
	t.ID IS NULL OR t.ID NOT IN (
		SELECT
			p.ID
		FROM
			"test_in_2" p
	)

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1.ID
FROM
	"test_in_1" t1

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1.ID
FROM
	"test_in_2" t1

