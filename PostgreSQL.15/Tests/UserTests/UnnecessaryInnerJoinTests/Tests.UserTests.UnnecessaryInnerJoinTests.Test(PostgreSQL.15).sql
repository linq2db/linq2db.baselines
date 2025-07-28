BeforeExecute
-- PostgreSQL.15 PostgreSQL

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
			t1."Field2" = x."Field2" AND x."Field1"::BigInt IN (1::bigint, 2::bigint, 3::bigint)
	)

