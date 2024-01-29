BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "InfeedAdvicePositionDTO"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "InfeedAdvicePositionDTO"
(
	"Id" Char (36) NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Char(36) -- AnsiStringFixedLength
SET     @Id = '193ae7f4-5309-4eee-a746-27b28c7e30f3'

INSERT INTO "InfeedAdvicePositionDTO"
(
	"Id"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	Upper(Cast("infeed"."Id" as NVarChar(36)))
FROM
	"InfeedAdvicePositionDTO" "infeed"
LIMIT ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"infeed"."Id"
FROM
	"InfeedAdvicePositionDTO" "infeed"
WHERE
	Upper(Cast("infeed"."Id" as NVarChar(36))) LIKE '%7F4-53%' ESCAPE '~'

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"infeed"."Id"
FROM
	"InfeedAdvicePositionDTO" "infeed"
WHERE
	Upper(Cast("infeed"."Id" as NVarChar(36))) LIKE '193AE%' ESCAPE '~'

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"infeed"."Id"
FROM
	"InfeedAdvicePositionDTO" "infeed"
WHERE
	Upper(Cast("infeed"."Id" as NVarChar(36))) LIKE '%8F4-53%' ESCAPE '~'

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"infeed"."Id"
FROM
	"InfeedAdvicePositionDTO" "infeed"
WHERE
	Lower(Upper(Cast("infeed"."Id" as NVarChar(36)))) LIKE '293AE%' ESCAPE '~'

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "InfeedAdvicePositionDTO"

