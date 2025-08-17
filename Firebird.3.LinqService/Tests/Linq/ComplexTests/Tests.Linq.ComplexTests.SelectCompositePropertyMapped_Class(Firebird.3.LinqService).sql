BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT DISTINCT
	"u"."city",
	"u"."street",
	"u"."building_number"
FROM
	"User" "u"
FETCH NEXT 2 ROWS ONLY

