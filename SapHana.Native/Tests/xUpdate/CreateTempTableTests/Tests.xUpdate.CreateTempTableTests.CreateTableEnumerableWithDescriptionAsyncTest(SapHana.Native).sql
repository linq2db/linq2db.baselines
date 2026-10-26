-- SapHana.Native SapHana
DO BEGIN
	DECLARE EXIT HANDLER FOR SQL_ERROR_CODE 259 BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "TempTable"';
END

-- SapHana.Native SapHana
CREATE COLUMN TABLE "TempTable"
(
	"Name" NVarChar(20) NOT NULL,

	PRIMARY KEY ("Name")
)

-- SapHana.Native SapHana
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'

INSERT INTO "TempTable"
(
	"Name"
)
VALUES
(
	:"Name"
)

-- SapHana.Native SapHana
SELECT
	"t"."Name"
FROM
	"Person" "p"
		INNER JOIN "TempTable" "t" ON "p"."FirstName" = "t"."Name"

-- SapHana.Native SapHana
DO BEGIN
	DECLARE EXIT HANDLER FOR SQL_ERROR_CODE 259 BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "TempTable"';
END

