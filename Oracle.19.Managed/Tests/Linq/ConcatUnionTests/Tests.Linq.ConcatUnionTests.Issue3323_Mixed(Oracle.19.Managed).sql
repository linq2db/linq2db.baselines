BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

INSERT INTO "Issue3323Table"
(
	"Id",
	"FistName",
	"LastName",
	"Text"
)
VALUES
(
	1,
	'one',
	'two',
	'text'
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	r."Id",
	r."FistName" || ' ' || r."LastName"
FROM
	"Issue3323Table" r
UNION ALL
SELECT
	r_1."Id" + 1,
	r_1."Text"
FROM
	"Issue3323Table" r_1

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	r."Id" + 1,
	r."Text"
FROM
	"Issue3323Table" r
UNION ALL
SELECT
	r_1."Id",
	r_1."FistName" || ' ' || r_1."LastName"
FROM
	"Issue3323Table" r_1

