-- Oracle.11.Managed Oracle11

INSERT INTO "Issue1373Tests"
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

INSERT INTO "Issue1373Tests"
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

INSERT INTO "Issue1373Tests"
(
	"Id",
	"Field1"
)
VALUES
(
	3,
	'test'
)

-- Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1."Field1"
FROM
	"Issue1373Tests" t1
ORDER BY
	t1."Id"

