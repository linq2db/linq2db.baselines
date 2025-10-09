BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"u"."Id",
	"u"."user_name",
	"u"."city",
	"u"."street",
	"u"."building_number"
FROM
	"User" "u"
WHERE
	"u"."city" = 'Springwood' AND "u"."street" = 'Elm Street' AND
	"u"."building_number" = 13
FETCH NEXT 2 ROWS ONLY

