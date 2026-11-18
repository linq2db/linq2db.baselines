-- Firebird.3 Firebird3
INSERT INTO "SkipOnlyField" DEFAULT VALUES

-- Firebird.3 Firebird3
SELECT
	"t1"."Id"
FROM
	"SkipOnlyField" "t1"
FETCH NEXT 2 ROWS ONLY

