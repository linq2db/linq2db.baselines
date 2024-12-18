BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue2933Car"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Issue2933Car"
(
	"PersonId" Integer     NULL,
	"Id"       Integer NOT NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @PersonId  -- Int32
SET     @PersonId = 1
DECLARE @Id  -- Int32
SET     @Id = 1

INSERT INTO "Issue2933Car"
(
	"PersonId",
	"Id"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @PersonId  -- Int32
SET     @PersonId = NULL
DECLARE @Id  -- Int32
SET     @Id = 2

INSERT INTO "Issue2933Car"
(
	"PersonId",
	"Id"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue2933Person"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Issue2933Person"
(
	"Id" Integer NOT NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1

INSERT INTO "Issue2933Person"
(
	"Id"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue2933Pet"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Issue2933Pet"
(
	"Name"     NVarChar(255) NOT NULL,
	"Id"       Integer       NOT NULL,
	"PersonId" Integer       NOT NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Name NVarChar(8) -- String
SET     @Name = 'Snuffles'
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @PersonId  -- Int32
SET     @PersonId = 1

INSERT INTO "Issue2933Pet"
(
	"Name",
	"Id",
	"PersonId"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'Buddy'
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @PersonId  -- Int32
SET     @PersonId = 1

INSERT INTO "Issue2933Pet"
(
	"Name",
	"Id",
	"PersonId"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"x"."Id",
	"t1"."Name"
FROM
	"Issue2933Car" "x"
		LEFT JOIN "Issue2933Person" "a_Person" ON "x"."PersonId" = "a_Person"."Id" AND "x"."PersonId" IS NOT NULL
		LEFT JOIN LATERAL (
			SELECT
				"a_PetIds"."Name"
			FROM
				"Issue2933Pet" "a_PetIds"
			WHERE
				"a_Person"."Id" = "a_PetIds"."PersonId"
			LIMIT 1
		) "t1" ON 1=1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue2933Pet"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue2933Person"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue2933Car"

