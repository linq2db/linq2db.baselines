--  PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Parents" x
WHERE
	NOT EXISTS(
		SELECT
			1
		FROM
			"Children" y
		WHERE
			x."Id" = y."ParentId" AND y."IsActive"
	)



