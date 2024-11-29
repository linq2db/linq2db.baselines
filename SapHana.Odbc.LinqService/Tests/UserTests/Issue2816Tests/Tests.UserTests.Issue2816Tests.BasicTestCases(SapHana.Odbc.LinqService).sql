BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue2816Table"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Issue2816Table"
(
	"Id"   Integer       NOT NULL,
	"Text" NVarChar(255)     NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 0
DECLARE @Text NVarChar -- String
SET     @Text = ''

INSERT INTO "Issue2816Table"
(
	"Id",
	"Text"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Text NVarChar(1) -- String
SET     @Text = 'a'

INSERT INTO "Issue2816Table"
(
	"Id",
	"Text"
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
DECLARE @Text NVarChar(3) -- String
SET     @Text = ' m '

INSERT INTO "Issue2816Table"
(
	"Id",
	"Text"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 3
DECLARE @Text NVarChar(1) -- String
SET     @Text = ' '

INSERT INTO "Issue2816Table"
(
	"Id",
	"Text"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 4
DECLARE @Text NVarChar(2) -- String
SET     @Text = '  '

INSERT INTO "Issue2816Table"
(
	"Id",
	"Text"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 5
DECLARE @Text NVarChar -- String
SET     @Text = NULL

INSERT INTO "Issue2816Table"
(
	"Id",
	"Text"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"p"."Id",
	"p"."Text"
FROM
	"Issue2816Table" "p"
WHERE
	"p"."Text" IS NULL OR LTRIM("p"."Text", '	
                 　') = ''

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Text"
FROM
	"Issue2816Table" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue2816Table"

