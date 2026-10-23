-- Oracle.11.Managed Oracle11
INSERT INTO "Issue5975Row"
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

-- Oracle.11.Managed Oracle11
SELECT
	t1."Id",
	t1."Plain",
	t1."Date"
FROM
	"Issue5975Row" t1
WHERE
	ROWNUM <= 2

