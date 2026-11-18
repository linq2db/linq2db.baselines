-- Firebird.5 Firebird4
INSERT INTO "SkipOnlyField" DEFAULT VALUES

-- Firebird.5 Firebird4
SELECT
	"t1"."Id"
FROM
	"SkipOnlyField" "t1"
FETCH NEXT 2 ROWS ONLY

