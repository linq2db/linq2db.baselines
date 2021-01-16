BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "GroupSampleClass"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "GroupSampleClass"
(
	"Id1"   Integer NOT NULL,
	"Id2"   Integer NOT NULL,
	"Value" Integer NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id1  -- Int32
SET     @Id1 = 1
DECLARE @Id2  -- Int32
SET     @Id2 = 1
DECLARE @Value_1  -- Int32
SET     @Value_1 = 1

INSERT INTO "GroupSampleClass"
(
	"Id1",
	"Id2",
	"Value"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id1  -- Int32
SET     @Id1 = 2
DECLARE @Id2  -- Int32
SET     @Id2 = 2
DECLARE @Value_1  -- Int32
SET     @Value_1 = 0

INSERT INTO "GroupSampleClass"
(
	"Id1",
	"Id2",
	"Value"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id1  -- Int32
SET     @Id1 = 3
DECLARE @Id2  -- Int32
SET     @Id2 = 0
DECLARE @Value_1  -- Int32
SET     @Value_1 = 1

INSERT INTO "GroupSampleClass"
(
	"Id1",
	"Id2",
	"Value"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id1  -- Int32
SET     @Id1 = 4
DECLARE @Id2  -- Int32
SET     @Id2 = 1
DECLARE @Value_1  -- Int32
SET     @Value_1 = 0

INSERT INTO "GroupSampleClass"
(
	"Id1",
	"Id2",
	"Value"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id1  -- Int32
SET     @Id1 = 5
DECLARE @Id2  -- Int32
SET     @Id2 = 2
DECLARE @Value_1  -- Int32
SET     @Value_1 = 1

INSERT INTO "GroupSampleClass"
(
	"Id1",
	"Id2",
	"Value"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id1  -- Int32
SET     @Id1 = 6
DECLARE @Id2  -- Int32
SET     @Id2 = 0
DECLARE @Value_1  -- Int32
SET     @Value_1 = 0

INSERT INTO "GroupSampleClass"
(
	"Id1",
	"Id2",
	"Value"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id1  -- Int32
SET     @Id1 = 7
DECLARE @Id2  -- Int32
SET     @Id2 = 1
DECLARE @Value_1  -- Int32
SET     @Value_1 = 1

INSERT INTO "GroupSampleClass"
(
	"Id1",
	"Id2",
	"Value"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id1  -- Int32
SET     @Id1 = 8
DECLARE @Id2  -- Int32
SET     @Id2 = 2
DECLARE @Value_1  -- Int32
SET     @Value_1 = 0

INSERT INTO "GroupSampleClass"
(
	"Id1",
	"Id2",
	"Value"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id1  -- Int32
SET     @Id1 = 9
DECLARE @Id2  -- Int32
SET     @Id2 = 0
DECLARE @Value_1  -- Int32
SET     @Value_1 = 1

INSERT INTO "GroupSampleClass"
(
	"Id1",
	"Id2",
	"Value"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id1  -- Int32
SET     @Id1 = 10
DECLARE @Id2  -- Int32
SET     @Id2 = 1
DECLARE @Value_1  -- Int32
SET     @Value_1 = 0

INSERT INTO "GroupSampleClass"
(
	"Id1",
	"Id2",
	"Value"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Key_1",
	Count(*)
FROM
	(
		SELECT DISTINCT
			"selectParam"."Id1" as "Key_1",
			"selectParam"."Id2" as "Key_2",
			"selectParam"."Value" as "Value_1"
		FROM
			"GroupSampleClass" "selectParam"
	) "t1"
GROUP BY ROLLUP (
	"t1"."Key_1",
	"t1"."Key_2"
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "GroupSampleClass"

