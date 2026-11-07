-- SapHana.Native SapHana
CREATE COLUMN TABLE "MergeTemp"
(
	"ID"   Integer      NOT NULL,
	"Name" NVarChar(20)     NULL,

	PRIMARY KEY ("ID")
)

-- SapHana.Native SapHana
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'

INSERT INTO "MergeTemp"
(
	"ID",
	"Name"
)
VALUES
(
	:"ID",
	:"Name"
)

-- SapHana.Native SapHana
UPDATE
	"MergeTemp" "t1"
SET
	"ID" = "t1"."ID",
	"Name" = "t1"."Name"
WHERE
	"t1"."ID" = (
		SELECT
			"t"."ID"
		FROM
			"MergeTemp" "t"
		WHERE
			"t"."Name" = 'John'
	)

-- SapHana.Native SapHana
DO BEGIN
	DECLARE EXIT HANDLER FOR SQL_ERROR_CODE 259 BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "MergeTemp"';
END

