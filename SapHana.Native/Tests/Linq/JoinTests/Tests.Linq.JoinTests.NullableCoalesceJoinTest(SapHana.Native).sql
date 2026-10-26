-- SapHana.Native SapHana
CREATE COLUMN TABLE "tmptbl1"
(
	"ID"    Integer       NOT NULL,
	"Value" NVarChar(255)     NULL,

	PRIMARY KEY ("ID")
)

-- SapHana.Native SapHana
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @Value NVarChar(6) -- String
SET     @Value = 'Value1'

INSERT INTO "tmptbl1"
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
SET     @ID = 2
DECLARE @Value NVarChar -- String
SET     @Value = NULL

INSERT INTO "tmptbl1"
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
CREATE COLUMN TABLE "tmptbl2"
(
	"ID"    Integer       NOT NULL,
	"Value" NVarChar(255) NOT NULL,

	PRIMARY KEY ("ID")
)

-- SapHana.Native SapHana
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @Value NVarChar(6) -- String
SET     @Value = 'Value1'

INSERT INTO "tmptbl2"
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
DECLARE @Value NVarChar(6) -- String
SET     @Value = 'Value2'

INSERT INTO "tmptbl2"
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
CREATE COLUMN TABLE "tmptbl3"
(
	"ID"    Integer       NOT NULL,
	"Value" NVarChar(255)     NULL,

	PRIMARY KEY ("ID")
)

-- SapHana.Native SapHana
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @Value NVarChar(6) -- String
SET     @Value = 'Value1'

INSERT INTO "tmptbl3"
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
SET     @ID = 2
DECLARE @Value NVarChar -- String
SET     @Value = NULL

INSERT INTO "tmptbl3"
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
SELECT
	"t4"."ID",
	"t4"."Value"
FROM
	"tmptbl1" "t2"
		LEFT JOIN "tmptbl2" "t3" ON "t2"."ID" = "t3"."ID"
		LEFT JOIN "tmptbl3" "t4" ON Coalesce("t3"."Value", "t2"."Value") = "t4"."Value" OR "t3"."Value" IS NULL AND "t2"."Value" IS NULL AND "t4"."Value" IS NULL

-- SapHana.Native SapHana
SELECT
	"t1"."ID",
	"t1"."Value"
FROM
	"tmptbl1" "t1"

-- SapHana.Native SapHana
SELECT
	"t1"."ID",
	"t1"."Value"
FROM
	"tmptbl2" "t1"

-- SapHana.Native SapHana
SELECT
	"t1"."ID",
	"t1"."Value"
FROM
	"tmptbl3" "t1"

-- SapHana.Native SapHana
DO BEGIN
	DECLARE EXIT HANDLER FOR SQL_ERROR_CODE 259 BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "tmptbl3"';
END

-- SapHana.Native SapHana
DO BEGIN
	DECLARE EXIT HANDLER FOR SQL_ERROR_CODE 259 BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "tmptbl2"';
END

-- SapHana.Native SapHana
DO BEGIN
	DECLARE EXIT HANDLER FOR SQL_ERROR_CODE 259 BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "tmptbl1"';
END

