-- Oracle.12.Managed Oracle.Managed Oracle12

DELETE FROM
	"AllTypes" t
WHERE
	t.ID >= 1000

-- Oracle.12.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "AllTypes" (ID, "bigintDataType", "numericDataType", "bitDataType", "smallintDataType", "decimalDataType", "smallmoneyDataType", "intDataType", "tinyintDataType", "moneyDataType", "floatDataType", "realDataType", "datetimeDataType", "datetime2DataType", "datetimeoffsetDataType", "localZoneDataType", "charDataType", "varcharDataType", "textDataType", "ncharDataType", "nvarcharDataType", "ntextDataType", "binaryDataType", "bfileDataType", "guidDataType", "longDataType", "xmlDataType") VALUES (1000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,TO_TIMESTAMP('2020-02-29 17:54:55.1231234', 'YYYY-MM-DD HH24:MI:SS.FF7'),TO_TIMESTAMP('2020-02-29 17:54:55.1231234', 'YYYY-MM-DD HH24:MI:SS.FF7'),NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL)
SELECT * FROM dual

