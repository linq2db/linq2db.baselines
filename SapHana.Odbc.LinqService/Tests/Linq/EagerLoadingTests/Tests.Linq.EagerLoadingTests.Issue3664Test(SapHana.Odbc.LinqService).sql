BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Test3664"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Test3664"
(
	"Id" Integer NOT NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1

INSERT INTO "Test3664"
(
	"Id"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Test3664Item"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Test3664Item"
(
	"Id"     Integer NOT NULL,
	"TestId" Integer NOT NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 11
DECLARE @TestId  -- Int32
SET     @TestId = 1

INSERT INTO "Test3664Item"
(
	"Id",
	"TestId"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 12
DECLARE @TestId  -- Int32
SET     @TestId = 1

INSERT INTO "Test3664Item"
(
	"Id",
	"TestId"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @id  -- Int32
SET     @id = 11

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."TestId"
FROM
	"Test3664" "m_1"
		INNER JOIN "Test3664Item" "d" ON "m_1"."Id" = "d"."TestId"
WHERE
	"d"."Id" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id"
FROM
	"Test3664" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @id  -- Int32
SET     @id = 12

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."TestId"
FROM
	"Test3664" "m_1"
		INNER JOIN "Test3664Item" "d" ON "m_1"."Id" = "d"."TestId"
WHERE
	"d"."Id" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id"
FROM
	"Test3664" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Test3664Item"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Test3664"

