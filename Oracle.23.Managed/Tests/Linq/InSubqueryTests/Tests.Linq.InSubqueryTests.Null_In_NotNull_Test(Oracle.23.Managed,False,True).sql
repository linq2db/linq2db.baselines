BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t.PK,
	t.ID,
	t.GV
FROM
	"test_in_1" t
WHERE
	t.ID IN (
		SELECT
			p.ID
		FROM
			"test_in_2" p
	)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t1.PK,
	t1.ID,
	t1.GV
FROM
	"test_in_1" t1

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t1.PK,
	t1.ID
FROM
	"test_in_2" t1

