BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t1."Field2"
FROM
	"Table2" t1
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Table1" x
		WHERE
			t1."Field2" = x."Field2" AND CAST(x."Field1" AS Number(19)) IN (1, 2, 3)
	)

