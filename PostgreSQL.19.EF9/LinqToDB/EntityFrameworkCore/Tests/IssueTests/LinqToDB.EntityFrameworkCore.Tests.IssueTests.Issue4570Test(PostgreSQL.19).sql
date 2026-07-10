-- PostgreSQL.19 PostgreSQL12

SELECT
	1
FROM
	"Parents" ua
WHERE
	ua."ParentId" = 55377 AND EXISTS(
		SELECT
			*
		FROM
			"Parents" t1
	)



