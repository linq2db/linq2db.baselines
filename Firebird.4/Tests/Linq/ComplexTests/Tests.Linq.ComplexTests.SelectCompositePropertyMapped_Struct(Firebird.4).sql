BeforeExecute
-- Firebird.4 Firebird4

SELECT DISTINCT
	"u"."city",
	"u"."street",
	"u"."building_number"
FROM
	"UserStruct" "u"
FETCH NEXT 2 ROWS ONLY

