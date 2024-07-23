BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Dog"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Dog"
(
	"Id"      Integer NOT NULL,
	"OwnerId" Integer NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @OwnerId  -- Int32
SET     @OwnerId = 1

INSERT INTO "Dog"
(
	"Id",
	"OwnerId"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Human"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Human"
(
	"Id"      Integer NOT NULL,
	"HouseId" Integer NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @HouseId  -- Int32
SET     @HouseId = 1

INSERT INTO "Human"
(
	"Id",
	"HouseId"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "House"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "House"
(
	"Id" Integer NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1

INSERT INTO "House"
(
	"Id"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Window"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Window"
(
	"Id"       Integer NOT NULL,
	"Position" Integer NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 6
DECLARE @Position  -- Int32
SET     @Position = 6

INSERT INTO "Window"
(
	"Id",
	"Position"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id"
FROM
	"Dog" "x"
		INNER JOIN "Human" "a_Owner" ON "x"."OwnerId" = "a_Owner"."Id"
		INNER JOIN "House" "a_House" ON "a_Owner"."HouseId" = "a_House"."Id"
		LEFT JOIN (
			SELECT
				"a_WindowAtPosition"."Id"
			FROM
				"Window" "a_WindowAtPosition"
			WHERE
				"a_WindowAtPosition"."Position" = 6
			LIMIT 1
		) "t1" ON 1=1
LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Window"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "House"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Human"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Dog"

