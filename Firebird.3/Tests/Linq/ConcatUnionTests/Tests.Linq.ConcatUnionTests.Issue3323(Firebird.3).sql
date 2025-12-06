-- Firebird.3 Firebird3

INSERT INTO "Issue3323Table"
(
	"Id",
	"FirstName",
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

-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Text",
	"t1"."FirstName" || ' ' || "t1"."LastName"
FROM
	"Issue3323Table" "t1"
UNION ALL
SELECT
	"t2"."Id",
	"t2"."Text",
	"t2"."FirstName" || ' ' || "t2"."LastName"
FROM
	"Issue3323Table" "t2"

