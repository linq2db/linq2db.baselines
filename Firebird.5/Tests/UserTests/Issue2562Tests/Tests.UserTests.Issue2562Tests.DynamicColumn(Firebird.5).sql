BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1"."CardTypeId",
	"t1"."CardNumber",
	(
		SELECT
			LIST("x"."Id")
		FROM
			"ExternalId2562" "x"
		WHERE
			"x"."CardTypeId" = "t1"."CardTypeId" AND ("x"."CardNumber" = "t1"."CardNumber" OR "x"."CardNumber" IS NULL AND "t1"."CardNumber" IS NULL) AND
			"x"."TypeId" = 2
		FETCH NEXT 1 ROWS ONLY
	)
FROM
	"Person2562" "t1"

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"person"."CardNumber",
	"person"."CardTypeId",
	(
		SELECT
			LIST("x"."Id")
		FROM
			"ExternalId2562" "x"
		WHERE
			"x"."CardTypeId" = "person"."CardTypeId" AND ("x"."CardNumber" = "person"."CardNumber" OR "x"."CardNumber" IS NULL AND "person"."CardNumber" IS NULL) AND
			"x"."TypeId" = 2
		FETCH NEXT 1 ROWS ONLY
	)
FROM
	"Person2562" "person"

