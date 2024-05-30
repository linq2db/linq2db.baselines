BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

DELETE FROM
	"AllTypes" t
WHERE
	t.ID >= 1000

BeforeExecute
BeginTransaction
BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @:p1 Clob(4000) -- Object
SET     @:p1 = NULL
DECLARE @:p2 NClob(4000) -- Object
SET     @:p2 = NULL

INSERT ALL
	INTO "AllTypes" (ID, "bigintDataType", "numericDataType", "bitDataType", "smallintDataType", "decimalDataType", "smallmoneyDataType", "intDataType", "tinyintDataType", "moneyDataType", "floatDataType", "realDataType", "datetimeDataType", "datetime2DataType", "datetimeoffsetDataType", "localZoneDataType", "charDataType", "varcharDataType", "textDataType", "ncharDataType", "nvarcharDataType", "ntextDataType", "binaryDataType", "bfileDataType", "guidDataType", "longDataType", "xmlDataType") VALUES (1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,DATE '2020-02-29',TIMESTAMP '2020-02-29 17:54:55.123123',NULL,NULL,NULL,NULL,:p1,NULL,NULL,:p2,NULL,NULL,NULL,NULL,NULL)
SELECT * FROM dual

BeforeExecute
DisposeTransaction
