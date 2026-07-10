-- PostgreSQL.15 PostgreSQL12

INSERT INTO "BulkCopyIdentityTable"
(
	"Value"
)
VALUES
(1),
(2)



-- PostgreSQL.15 PostgreSQL12

SELECT
	t1."Id",
	t1."Value"
FROM
	"BulkCopyIdentityTable" t1
ORDER BY
	t1."Id"



