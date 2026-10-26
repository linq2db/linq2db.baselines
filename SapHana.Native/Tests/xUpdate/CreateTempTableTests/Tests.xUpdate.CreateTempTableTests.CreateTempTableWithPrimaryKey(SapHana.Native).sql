-- SapHana.Native SapHana
CREATE COLUMN TABLE "TableWithPrimaryKey"
(
	"Key" Integer NOT NULL,

	PRIMARY KEY ("Key")
)

-- SapHana.Native SapHana
DO BEGIN
	DECLARE EXIT HANDLER FOR SQL_ERROR_CODE 259 BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "TableWithPrimaryKey"';
END

