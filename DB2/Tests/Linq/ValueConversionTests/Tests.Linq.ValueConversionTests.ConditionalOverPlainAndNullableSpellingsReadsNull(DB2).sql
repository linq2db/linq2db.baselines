-- DB2 DB2.LUW DB2LUW
SELECT
	CASE
		WHEN "r"."Id" = 1 THEN "r"."Plain"
		ELSE "r"."Date"
	END
FROM
	"Issue5975Row" "r"
ORDER BY
	"r"."Id"

