-- SapHana.Native SapHana
DO BEGIN
	DECLARE EXIT HANDLER FOR SQL_ERROR_CODE 259 BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "DropTableTest"';
END

-- SapHana.Native SapHana
CREATE COLUMN TABLE "DropTableTest"
(
	"ID" Integer NOT NULL,

	PRIMARY KEY ("ID")
)

-- SapHana.Native SapHana
INSERT INTO "DropTableTest"
(
	"ID"
)
VALUES
(
	123
)

-- SapHana.Native SapHana
SELECT
	"t1"."ID"
FROM
	"DropTableTest" "t1"

-- SapHana.Native SapHana
DROP TABLE "DropTableTest"

-- SapHana.Native SapHana
SELECT
	"t1"."ID"
FROM
	"DropTableTest" "t1"

