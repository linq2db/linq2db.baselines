-- SapHana.Native SapHana
CREATE COLUMN TABLE "temp_table_1"
(
	"ID"    Integer       NOT NULL,
	"Value" NVarChar(255)     NULL,

	PRIMARY KEY ("ID")
)

-- SapHana.Native SapHana
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @Value NVarChar(5) -- String
SET     @Value = 'Value'

INSERT INTO "temp_table_1"
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
CREATE COLUMN TABLE "temp_table_2"
(
	"Value" NVarChar(50) NOT NULL,

	PRIMARY KEY ("Value")
)

-- SapHana.Native SapHana
INSERT INTO "temp_table_2"
(
	"Value"
)
SELECT
	"t1"."Value_1"
FROM
	"temp_table_1" "gr"
		INNER JOIN LATERAL (
			SELECT
				"c_1"."Value" as "Value_1"
			FROM
				"temp_table_1" "c_1"
			WHERE
				"gr"."ID" = "c_1"."ID"
			LIMIT 1
		) "t1" ON 1=1

-- SapHana.Native SapHana
DO BEGIN
	DECLARE EXIT HANDLER FOR SQL_ERROR_CODE 259 BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "temp_table_2"';
END

-- SapHana.Native SapHana
DO BEGIN
	DECLARE EXIT HANDLER FOR SQL_ERROR_CODE 259 BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "temp_table_1"';
END

