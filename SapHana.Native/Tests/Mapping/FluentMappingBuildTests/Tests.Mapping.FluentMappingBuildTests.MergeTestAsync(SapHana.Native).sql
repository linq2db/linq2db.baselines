-- SapHana.Native SapHana
DO BEGIN
	DECLARE EXIT HANDLER FOR SQL_ERROR_CODE 259 BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "FluentTemp_Merge"';
END

-- SapHana.Native SapHana
CREATE COLUMN TABLE "FluentTemp_Merge"
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

INSERT INTO "FluentTemp_Merge"
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
MERGE INTO "FluentTemp_Merge" "Target"
USING (
	SELECT 1 AS "ID", 'John II' AS "Name" FROM DUMMY) "Source"
ON ("Target"."ID" = "Source"."ID")

WHEN MATCHED THEN
UPDATE
SET
	"Name" = "Source"."Name"

WHEN NOT MATCHED THEN
INSERT
(
	"ID",
	"Name"
)
VALUES
(
	"Source"."ID",
	"Source"."Name"
)

-- SapHana.Native SapHana
DO BEGIN
	DECLARE EXIT HANDLER FOR SQL_ERROR_CODE 259 BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "FluentTemp_Merge"';
END

