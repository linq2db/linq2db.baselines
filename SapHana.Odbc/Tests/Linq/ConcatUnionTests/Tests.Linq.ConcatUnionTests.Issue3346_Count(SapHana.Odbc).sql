BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "ComplexPerson"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "ComplexPerson"
(
	"Id"        Integer       NOT NULL,
	"FirstName" NVarChar(255)     NULL,
	"LastName"  NVarChar(255)     NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	(
		SELECT
			"x"."Id",
			"x"."FirstName",
			"x"."LastName"
		FROM
			"ComplexPerson" "x"
		WHERE
			"x"."Id" < 10
		UNION
		SELECT
			"x_1"."Id",
			"x_1"."FirstName",
			"x_1"."LastName"
		FROM
			"ComplexPerson" "x_1"
		WHERE
			"x_1"."Id" < 20
	) "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "ComplexPerson"

