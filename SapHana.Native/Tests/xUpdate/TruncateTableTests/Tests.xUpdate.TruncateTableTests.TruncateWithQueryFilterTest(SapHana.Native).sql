-- SapHana.Native SapHana
DO BEGIN
	DECLARE EXIT HANDLER FOR SQL_ERROR_CODE 259 BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "TestTrun"';
END

-- SapHana.Native SapHana
DO BEGIN
	DECLARE EXIT HANDLER FOR SQL_ERROR_CODE 259 BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "TestTrunDetail"';
END

-- SapHana.Native SapHana
CREATE COLUMN TABLE "TestTrunDetail"
(
	"ID"         Integer NOT NULL,
	"TestTrunID" Integer NOT NULL,
	"IsActive"   TinyInt NOT NULL,

	PRIMARY KEY ("ID")
)

-- SapHana.Native SapHana
CREATE COLUMN TABLE "TestTrun"
(
	"ID"     Integer         NOT NULL,
	"Field1" Decimal(38, 10) NOT NULL,

	PRIMARY KEY ("ID")
)

-- SapHana.Native SapHana
DELETE FROM "TestTrun"

-- SapHana.Native SapHana
DROP TABLE "TestTrun"

-- SapHana.Native SapHana
DROP TABLE "TestTrunDetail"

