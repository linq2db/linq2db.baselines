BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	"t1"."Id",
	"t1"."FirstName",
	"t1"."LastName",
	Coalesce("t1"."FirstName", '') || ' ' || Coalesce("t1"."LastName", '')
FROM
	"Issue2434Table" "t1"
ORDER BY
	Coalesce("t1"."FirstName", '') || ' ' || Coalesce("t1"."LastName", '')

