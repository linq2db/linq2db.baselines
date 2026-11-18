-- SapHana.Native SapHana
DO BEGIN
	DECLARE EXIT HANDLER FOR SQL_ERROR_CODE 259 BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "FluentTemp_InsertOrUpdate"';
END

-- SapHana.Native SapHana
CREATE COLUMN TABLE "FluentTemp_InsertOrUpdate"
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

INSERT INTO "FluentTemp_InsertOrUpdate"
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
	"FluentTemp_InsertOrUpdate" "t1"
SET
	"ID" = "t1"."ID",
	"Name" = "t1"."Name"
WHERE
	"t1"."ID" = 1

-- SapHana.Native SapHana
DO BEGIN
	DECLARE EXIT HANDLER FOR SQL_ERROR_CODE 259 BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "FluentTemp_InsertOrUpdate"';
END

