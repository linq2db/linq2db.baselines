BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TakeSkipClass"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "TakeSkipClass"
(
	"Value" VarChar(10)     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Value VarChar(6) -- AnsiString
SET     @Value = 'Value1'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Value VarChar(6) -- AnsiString
SET     @Value = 'Value2'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Value VarChar(6) -- AnsiString
SET     @Value = 'Value3'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Value VarChar(6) -- AnsiString
SET     @Value = 'Value4'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Value VarChar(6) -- AnsiString
SET     @Value = 'Value5'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Value VarChar(6) -- AnsiString
SET     @Value = 'Value6'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Value VarChar(6) -- AnsiString
SET     @Value = 'Value7'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Value VarChar(6) -- AnsiString
SET     @Value = 'Value8'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Value VarChar(6) -- AnsiString
SET     @Value = 'Value9'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @take  -- Int32
SET     @take = 1
DECLARE @skip  -- Int32
SET     @skip = 3

SELECT
	"t1"."Value"
FROM
	"TakeSkipClass" "t1"
ORDER BY
	"t1"."Value"
LIMIT ? OFFSET ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TakeSkipClass"

