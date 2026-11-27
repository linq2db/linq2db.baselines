-- Oracle.23.Managed Oracle.Managed Oracle12
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

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."Plain",
	t1."Date" as "Date_1"
FROM
	"ShiftedDateRow" t1
FETCH NEXT 2 ROWS ONLY

