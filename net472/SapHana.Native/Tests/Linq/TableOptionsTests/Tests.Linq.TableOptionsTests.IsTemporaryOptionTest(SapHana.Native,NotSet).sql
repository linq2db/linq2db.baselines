BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "temp_table1"
(
	"ID"    Integer NOT NULL,
	"Value" Integer NOT NULL
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @ID  -- Int32
SET     @ID = 1
DECLARE @Value_1  -- Int32
SET     @Value_1 = 2

INSERT INTO "temp_table1"
(
	"ID",
	"Value"
)
VALUES
(
	:"ID",
	:"Value_1"
)

BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "temp_table2"
(
	"ID"    Integer NOT NULL,
	"Value" Integer NOT NULL
)

BeforeExecute
-- SapHana.Native SapHana

INSERT INTO "temp_table2"
(
	"ID",
	"Value"
)
SELECT
	"t1"."ID",
	"t1"."Value"
FROM
	"temp_table1" "t1"

BeforeExecute
-- SapHana.Native SapHana

SELECT
	"t1"."ID",
	"t1"."Value"
FROM
	"temp_table1" "t1"

BeforeExecute
-- SapHana.Native SapHana

SELECT
	"t1"."ID",
	"t1"."Value"
FROM
	"temp_table2" "t1"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @ID  -- Int32
SET     @ID = 2
DECLARE @Value_1  -- Int32
SET     @Value_1 = 3

INSERT INTO "temp_table1"
(
	"ID",
	"Value"
)
VALUES
(
	:"ID",
	:"Value_1"
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @ID  -- Int32
SET     @ID = 3
DECLARE @Value_1  -- Int32
SET     @Value_1 = 3

INSERT INTO "temp_table1"
(
	"ID",
	"Value"
)
VALUES
(
	:"ID",
	:"Value_1"
)

BeforeExecute
INSERT BULK "temp_table1"

BeforeExecute
-- SapHana.Native SapHana

DELETE FROM "temp_table1"

BeforeExecute
-- SapHana.Native SapHana

DELETE FROM "temp_table2"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "temp_table2"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "temp_table1"

