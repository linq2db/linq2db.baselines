BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1"."CardTypeId",
	"t1"."CardNumber",
	(
		SELECT FIRST 1
			LIST("x"."Id")
		FROM
			"ExternalId2562" "x"
		WHERE
			"x"."CardTypeId" = "t1"."CardTypeId" AND ("x"."CardNumber" = "t1"."CardNumber" OR "x"."CardNumber" IS NULL AND "t1"."CardNumber" IS NULL) AND
			"x"."TypeId" = 2
	)
FROM
	"Person2562" "t1"

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"person"."CardNumber",
	"person"."CardTypeId",
	(
		SELECT FIRST 1
			LIST("x"."Id")
		FROM
			"ExternalId2562" "x"
		WHERE
			"x"."CardTypeId" = "person"."CardTypeId" AND ("x"."CardNumber" = "person"."CardNumber" OR "x"."CardNumber" IS NULL AND "person"."CardNumber" IS NULL) AND
			"x"."TypeId" = 2
	)
FROM
	"Person2562" "person"

