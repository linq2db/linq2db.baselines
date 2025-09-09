BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	"user_1"."FirstName",
	"user_1"."Status"
FROM
	"User" "user_1"
WHERE
	"user_1"."Status" IS NULL

