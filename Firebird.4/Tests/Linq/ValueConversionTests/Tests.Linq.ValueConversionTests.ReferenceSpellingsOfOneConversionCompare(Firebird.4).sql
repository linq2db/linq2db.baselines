-- Firebird.4 Firebird4
SELECT
	"r"."Id"
FROM
	"ReferenceConversionRow" "r"
WHERE
	"r"."Plain" = "r"."Guarded" OR "r"."Plain" IS NULL AND "r"."Guarded" IS NULL

