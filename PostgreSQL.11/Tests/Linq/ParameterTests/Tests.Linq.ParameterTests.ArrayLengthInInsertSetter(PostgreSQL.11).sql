-- PostgreSQL.11 PostgreSQL
DECLARE @arr Integer -- Int32
SET     @arr = 3

INSERT INTO "ArrayLengthTable"
(
	"Id",
	"Value"
)
VALUES
(
	1,
	:arr
)

-- PostgreSQL.11 PostgreSQL
SELECT
	t1."Id",
	t1."Value"
FROM
	"ArrayLengthTable" t1
LIMIT 2

