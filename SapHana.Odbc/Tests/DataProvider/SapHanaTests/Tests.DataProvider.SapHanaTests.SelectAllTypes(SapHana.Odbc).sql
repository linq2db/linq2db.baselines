-- SapHana.Odbc SapHanaOdbc
DECLARE @take Int -- Int32
SET     @take = 100

SELECT
	"t1"."ID",
	"t1"."bigintDataType",
	"t1"."smallintDataType",
	"t1"."decimalDataType",
	"t1"."smalldecimalDataType",
	"t1"."intDataType",
	"t1"."tinyintDataType",
	"t1"."floatDataType",
	"t1"."realDataType",
	"t1"."dateDataType",
	"t1"."timeDataType",
	"t1"."seconddateDataType",
	"t1"."timestampDataType",
	"t1"."charDataType",
	"t1"."char20DataType",
	"t1"."varcharDataType",
	"t1"."textDataType",
	"t1"."shorttextDataType",
	"t1"."ncharDataType",
	"t1"."nchar20DataType",
	"t1"."nvarcharDataType",
	"t1"."alphanumDataType",
	"t1"."binaryDataType",
	"t1"."varbinaryDataType",
	"t1"."blobDataType",
	"t1"."clobDataType",
	"t1"."nclobDataType"
FROM
	"AllTypes" "t1"
LIMIT ?

