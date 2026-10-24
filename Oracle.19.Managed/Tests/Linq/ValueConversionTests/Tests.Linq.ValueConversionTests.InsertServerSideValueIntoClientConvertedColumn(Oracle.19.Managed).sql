-- Oracle.19.Managed Oracle.Managed Oracle12
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

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."Plain",
	t1."Date" as "Date_1"
FROM
	"Issue5975Row" t1
FETCH NEXT 2 ROWS ONLY

