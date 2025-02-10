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

SELECT
	Lower(Cast("infeed"."Id" as NVarChar(36)))
FROM
	"InfeedAdvicePositionDTO" "infeed"
LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"infeed"."Id"
FROM
	"InfeedAdvicePositionDTO" "infeed"
WHERE
	Lower(Cast("infeed"."Id" as NVarChar(36))) LIKE '%7f4-53%' ESCAPE '~'

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"infeed"."Id"
FROM
	"InfeedAdvicePositionDTO" "infeed"
WHERE
	Lower(Cast("infeed"."Id" as NVarChar(36))) LIKE '193ae%' ESCAPE '~'

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"infeed"."Id"
FROM
	"InfeedAdvicePositionDTO" "infeed"
WHERE
	Lower(Cast("infeed"."Id" as NVarChar(36))) LIKE '%8f4-53%' ESCAPE '~'

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"infeed"."Id"
FROM
	"InfeedAdvicePositionDTO" "infeed"
WHERE
	Lower(Lower(Cast("infeed"."Id" as NVarChar(36)))) LIKE '293ae%' ESCAPE '~'

