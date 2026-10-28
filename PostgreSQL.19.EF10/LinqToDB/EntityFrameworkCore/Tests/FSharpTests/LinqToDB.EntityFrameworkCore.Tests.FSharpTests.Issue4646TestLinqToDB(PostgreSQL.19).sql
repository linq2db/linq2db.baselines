-- PostgreSQL.19 PostgreSQL12
DELETE FROM
	"Issue4646Table" t1



-- PostgreSQL.19 PostgreSQL12
DECLARE @Value Integer -- Int32
SET     @Value = NULL
DECLARE @ValueN Integer -- Int32
SET     @ValueN = NULL

INSERT INTO "Issue4646Table"
(
	"Value",
	"ValueN"
)
VALUES
(
	:Value,
	:ValueN
)



-- PostgreSQL.19 PostgreSQL12
SELECT
	t1."Id",
	t1."Value",
	t1."ValueN"
FROM
	"Issue4646Table" t1
LIMIT 2



