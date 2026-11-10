-- Firebird.5 Firebird4
SELECT
	CASE
		WHEN "r"."Id" = 1 THEN "r"."Plain"
		ELSE "r"."Date"
	END
FROM
	"Issue5975Row" "r"
ORDER BY
	"r"."Id"

