-- SapHana.Native SapHana
CREATE COLUMN TABLE "temp_table1"
(
	"ID"    Integer NOT NULL,
	"Value" Integer NOT NULL,

	PRIMARY KEY ("ID")
)

-- SapHana.Native SapHana
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @Value Integer -- Int32
SET     @Value = 2

INSERT INTO "temp_table1"
(
	"ID",
	"Value"
)
VALUES
(
	:"ID",
	:"Value"
)

-- SapHana.Native SapHana
CREATE COLUMN TABLE "temp_table2"
(
	"ID"    Integer NOT NULL,
	"Value" Integer NOT NULL,

	PRIMARY KEY ("ID")
)

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

-- SapHana.Native SapHana
SELECT
	"t1"."ID",
	"t1"."Value"
FROM
	"temp_table1" "t1"

-- SapHana.Native SapHana
SELECT
	"t1"."ID",
	"t1"."Value"
FROM
	"temp_table2" "t1"

-- SapHana.Native SapHana
DECLARE @ID Integer -- Int32
SET     @ID = 2
DECLARE @Value Integer -- Int32
SET     @Value = 3

INSERT INTO "temp_table1"
(
	"ID",
	"Value"
)
VALUES
(
	:"ID",
	:"Value"
)

-- SapHana.Native SapHana
DECLARE @ID Integer -- Int32
SET     @ID = 3
DECLARE @Value Integer -- Int32
SET     @Value = 3

INSERT INTO "temp_table1"
(
	"ID",
	"Value"
)
VALUES
(
	:"ID",
	:"Value"
)

INSERT BULK "temp_table1"

-- SapHana.Native SapHana
DELETE FROM "temp_table1"

-- SapHana.Native SapHana
DELETE FROM "temp_table2"

-- SapHana.Native SapHana
DO BEGIN
	DECLARE EXIT HANDLER FOR SQL_ERROR_CODE 259 BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "temp_table2"';
END

-- SapHana.Native SapHana
DO BEGIN
	DECLARE EXIT HANDLER FOR SQL_ERROR_CODE 259 BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "temp_table1"';
END

