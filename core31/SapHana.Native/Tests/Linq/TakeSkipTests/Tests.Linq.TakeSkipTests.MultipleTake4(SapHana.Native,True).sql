﻿BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "TakeSkipClass"
(
	"Value" VarChar(10)     NULL
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Value_1 VarChar(6) -- AnsiString
SET     @Value_1 = 'Value1'

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
DECLARE @Value_1 VarChar(6) -- AnsiString
SET     @Value_1 = 'Value2'

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
DECLARE @Value_1 VarChar(6) -- AnsiString
SET     @Value_1 = 'Value3'

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
DECLARE @Value_1 VarChar(6) -- AnsiString
SET     @Value_1 = 'Value4'

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
DECLARE @Value_1 VarChar(6) -- AnsiString
SET     @Value_1 = 'Value5'

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
DECLARE @Value_1 VarChar(6) -- AnsiString
SET     @Value_1 = 'Value6'

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
DECLARE @Value_1 VarChar(6) -- AnsiString
SET     @Value_1 = 'Value7'

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
DECLARE @Value_1 VarChar(6) -- AnsiString
SET     @Value_1 = 'Value8'

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
DECLARE @take_2  -- Int32
SET     @take_2 = 1

SELECT
	"t1"."Value"
FROM
	"TakeSkipClass" "t1"
ORDER BY
	"t1"."Value"
LIMIT :"take_2"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "TakeSkipClass"

