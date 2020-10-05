BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "SampleClass"
(
	"Id"     Integer      NOT NULL,
	"Value1" NVarChar(50)     NULL,
	"Value2" NVarChar(50)     NULL,
	"Value3" NVarChar(50)     NULL,
	"Value4" VarChar(50)      NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Value1 NVarChar(2) -- String
SET     @Value1 = 'V1'
DECLARE @Value2 NVarChar(2) -- String
SET     @Value2 = 'V2'
DECLARE @Value3 NVarChar -- String
SET     @Value3 = NULL
DECLARE @Value4 VarChar(2) -- AnsiString
SET     @Value4 = 'V4'

INSERT INTO "SampleClass"
(
	"Id",
	"Value1",
	"Value2",
	"Value3",
	"Value4"
)
VALUES
(
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Value1 NVarChar -- String
SET     @Value1 = NULL
DECLARE @Value2 NVarChar(2) -- String
SET     @Value2 = 'Z2'
DECLARE @Value3 NVarChar -- String
SET     @Value3 = NULL
DECLARE @Value4 VarChar -- AnsiString
SET     @Value4 = NULL

INSERT INTO "SampleClass"
(
	"Id",
	"Value1",
	"Value2",
	"Value3",
	"Value4"
)
VALUES
(
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 3
DECLARE @Value1 NVarChar(2) -- String
SET     @Value1 = 'Z1'
DECLARE @Value2 NVarChar -- String
SET     @Value2 = NULL
DECLARE @Value3 NVarChar -- String
SET     @Value3 = NULL
DECLARE @Value4 VarChar(2) -- AnsiString
SET     @Value4 = 'Z4'

INSERT INTO "SampleClass"
(
	"Id",
	"Value1",
	"Value2",
	"Value3",
	"Value4"
)
VALUES
(
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Max("t1"."Value4"),
	STRING_AGG("t1"."Value4", ' => ')
FROM
	"SampleClass" "t1"
GROUP BY
	"t1"."Id",
	"t1"."Value4"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "SampleClass"

