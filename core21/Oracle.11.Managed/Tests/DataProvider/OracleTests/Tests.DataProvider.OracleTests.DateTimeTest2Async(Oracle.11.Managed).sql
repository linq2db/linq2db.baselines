BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DELETE FROM
	"AllTypes" t1
WHERE
	t1.ID >= 1000

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11 (asynchronously)
DECLARE @p1 Clob(4000) -- Object
SET     @p1 = NULL
DECLARE @p2 NClob(4000) -- Object
SET     @p2 = NULL

INSERT ALL
	INTO "AllTypes" (ID, "bigintDataType", "numericDataType", "bitDataType", "smallintDataType", "decimalDataType", "smallmoneyDataType", "intDataType", "tinyintDataType", "moneyDataType", "floatDataType", "realDataType", "datetimeDataType", "datetime2DataType", "datetimeoffsetDataType", "localZoneDataType", "charDataType", "varcharDataType", "textDataType", "ncharDataType", "nvarcharDataType", "ntextDataType", "binaryDataType", "bfileDataType", "guidDataType", "longDataType", "uriDataType", "xmlDataType") VALUES (1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,TO_TIMESTAMP('2020-02-29 17:54:55.1231234', 'YYYY-MM-DD HH24:MI:SS.FF7'),TO_TIMESTAMP('2020-02-29 17:54:55.1231234', 'YYYY-MM-DD HH24:MI:SS.FF7'),NULL,NULL,NULL,NULL,:p1,NULL,NULL,:p2,NULL,NULL,NULL,NULL,NULL,NULL)
SELECT * FROM dual

