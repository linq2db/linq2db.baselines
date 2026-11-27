-- Oracle.11.Managed Oracle11
INSERT INTO "CustomFieldRecord"
(
	"Id",
	"Field1"
)
VALUES
(
	1,
	NULL
)

-- Oracle.11.Managed Oracle11
INSERT INTO "CustomFieldRecord"
(
	"Id",
	"Field1"
)
VALUES
(
	2,
	NULL
)

-- Oracle.11.Managed Oracle11
INSERT INTO "CustomFieldRecord"
(
	"Id",
	"Field1"
)
VALUES
(
	3,
	N'test'
)

-- Oracle.11.Managed Oracle11
SELECT
	t1."Id",
	t1."Field1"
FROM
	"CustomFieldRecord" t1
ORDER BY
	t1."Id"

