BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t1"."Id",
	(
		SELECT
			"se"."Value"
		FROM
			"Issue4723Table2" "se"
		WHERE
			"se"."Id" = "t1"."Id"
		FETCH NEXT 1 ROWS ONLY
	)
FROM
	"Issue4723Table1" "t1"

