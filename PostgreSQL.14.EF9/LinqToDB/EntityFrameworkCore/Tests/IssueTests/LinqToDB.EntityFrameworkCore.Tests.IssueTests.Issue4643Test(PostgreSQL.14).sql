-- PostgreSQL.13 PostgreSQL12
DECLARE @Value -2147483639 -- Object
SET     @Value = {5,6}

INSERT INTO "Issue4643Table"
(
	"Value"
)
VALUES
(
	:Value
)



-- PostgreSQL.13 PostgreSQL12
SELECT
	t1."Id",
	t1."Value"
FROM
	"Issue4643Table" t1
LIMIT 2



