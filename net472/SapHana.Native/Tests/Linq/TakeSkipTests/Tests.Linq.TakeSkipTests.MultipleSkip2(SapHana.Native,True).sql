BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "TakeSkipClass"
(
	"Value" VarChar(10)     NULL
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Value_1 VarChar(5) -- AnsiString
SET     @Value_1 = 'PLUTO'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	:"Value_1"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Value_1 VarChar(5) -- AnsiString
SET     @Value_1 = 'PIPPO'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	:"Value_1"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Value_1 VarChar(5) -- AnsiString
SET     @Value_1 = 'PLUTO'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	:"Value_1"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Value_1 VarChar(5) -- AnsiString
SET     @Value_1 = 'BOLTO'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	:"Value_1"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @skip  -- Int32
SET     @skip = 3

SELECT
	"t1"."Value"
FROM
	"TakeSkipClass" "t1"
ORDER BY
	"t1"."Value"
LIMIT 4200000000 OFFSET :"skip"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @skip  -- Int32
SET     @skip = 4

SELECT
	"t1"."Value"
FROM
	"TakeSkipClass" "t1"
ORDER BY
	"t1"."Value"
LIMIT 4200000000 OFFSET :"skip"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "TakeSkipClass"

