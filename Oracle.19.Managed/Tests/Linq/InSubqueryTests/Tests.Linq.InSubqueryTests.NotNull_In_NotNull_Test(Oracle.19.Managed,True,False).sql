BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t.PK,
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

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1.PK,
	t1.ID
FROM
	"test_in_1" t1

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1.PK,
	t1.ID
FROM
	"test_in_2" t1

