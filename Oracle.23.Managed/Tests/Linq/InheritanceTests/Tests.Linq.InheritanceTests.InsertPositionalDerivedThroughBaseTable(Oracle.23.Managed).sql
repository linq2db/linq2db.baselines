-- Oracle.23.Managed Oracle.Managed Oracle12
INSERT INTO "InheritanceFilterPositional"
(
	"Id",
	"Code",
	"Value"
)
VALUES
(
	1,
	1,
	42
)

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."Code",
	t1."Value" as "Value_1"
FROM
	"InheritanceFilterPositional" t1
FETCH NEXT 2 ROWS ONLY

