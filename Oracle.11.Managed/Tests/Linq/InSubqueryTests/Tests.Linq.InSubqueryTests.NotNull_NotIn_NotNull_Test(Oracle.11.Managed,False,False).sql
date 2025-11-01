-- Oracle.11.Managed Oracle11

SELECT
	t.ID
FROM
	"test_in_1" t
WHERE
	t.ID NOT IN (
		SELECT
			p.ID
		FROM
			"test_in_2" p
	)
ORDER BY
	t.ID

-- Oracle.11.Managed Oracle11

SELECT
	t1.ID
FROM
	"test_in_1" t1

-- Oracle.11.Managed Oracle11

SELECT
	t1.ID
FROM
	"test_in_2" t1

