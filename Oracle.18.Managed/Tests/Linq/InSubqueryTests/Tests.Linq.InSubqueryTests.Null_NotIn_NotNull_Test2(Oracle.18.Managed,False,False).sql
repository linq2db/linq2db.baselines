-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t.PK,
	t.ID,
	t.GV
FROM
	"test_in_1" t
WHERE
	t.ID IS NOT NULL AND t.ID NOT IN (
		SELECT
			p.ID
		FROM
			"test_in_2" p
	)

-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1.PK,
	t1.ID,
	t1.GV
FROM
	"test_in_1" t1

-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1.PK,
	t1.ID
FROM
	"test_in_2" t1

