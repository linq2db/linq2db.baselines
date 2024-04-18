BeforeExecute
BeginTransaction
BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "mega_composites"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "mega_composites"
(
	"ref1" BigInt     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "qwerty"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "qwerty"
(
	"Id"     BigInt        NOT NULL,
	"asdfgh" NVarChar(255)     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int64
SET     @Id = 1
DECLARE @asdfgh NVarChar(4) -- String
SET     @asdfgh = 'res1'

INSERT INTO "qwerty"
(
	"Id",
	"asdfgh"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int64
SET     @Id = 100500
DECLARE @asdfgh NVarChar(9) -- String
SET     @asdfgh = 'res100500'

INSERT INTO "qwerty"
(
	"Id",
	"asdfgh"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ref1  -- Int64
SET     @ref1 = 100500

INSERT INTO "mega_composites"
(
	"ref1"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ref1  -- Int64
SET     @ref1 = 1

INSERT INTO "mega_composites"
(
	"ref1"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ref1  -- Int64
SET     @ref1 = 100500

INSERT INTO "mega_composites"
(
	"ref1"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	"x"."ref1",
	"t1"."asdfgh",
	"t1"."is_empty"
FROM
	"mega_composites" "x"
		LEFT JOIN (
			SELECT
				"q"."asdfgh",
				1 as "is_empty",
				"q"."Id"
			FROM
				"qwerty" "q"
		) "t1" ON "t1"."Id" = "x"."ref1"
LIMIT ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "qwerty"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "mega_composites"

BeforeExecute
DisposeTransaction
