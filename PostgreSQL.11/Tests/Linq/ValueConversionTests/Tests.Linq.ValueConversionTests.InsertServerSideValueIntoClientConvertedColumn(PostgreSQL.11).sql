-- PostgreSQL.11 PostgreSQL
INSERT INTO "ShiftedDateRow"
(
	"Id",
	"Plain",
	"Date"
)
VALUES
(
	1,
	CURRENT_TIMESTAMP,
	CURRENT_TIMESTAMP
)

-- PostgreSQL.11 PostgreSQL
SELECT
	t1."Id",
	t1."Plain",
	t1."Date"
FROM
	"ShiftedDateRow" t1
LIMIT 2

