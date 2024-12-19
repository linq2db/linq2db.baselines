BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "ConcreteA"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "ConcreteA"
(
	"Id"    Integer       NOT NULL,
	"AOnly" NVarChar(255)     NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "ConcreteB"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "ConcreteB"
(
	"Id"    Integer       NOT NULL,
	"BOnly" NVarChar(255)     NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @AOnly NVarChar(6) -- String
SET     @AOnly = 'a only'

INSERT INTO "ConcreteA"
(
	"Id",
	"AOnly"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @BOnly NVarChar(6) -- String
SET     @BOnly = 'b only'

INSERT INTO "ConcreteB"
(
	"Id",
	"BOnly"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"e"."Id",
	"e"."AOnly",
	NULL,
	NULL
FROM
	"ConcreteA" "e"
UNION ALL
SELECT
	NULL,
	NULL,
	"e_1"."Id",
	"e_1"."BOnly"
FROM
	"ConcreteB" "e_1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "ConcreteB"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "ConcreteA"

