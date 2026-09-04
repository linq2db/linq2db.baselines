-- Oracle.11.Managed Oracle11
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

-- Oracle.11.Managed Oracle11
SELECT
	t1."Id",
	t1."Code",
	t1."Value"
FROM
	"InheritanceFilterPositional" t1
WHERE
	ROWNUM <= 2

