BeforeExecute
INSERT BULK "AllTypes"(bigintDataType, numericDataType, smallintDataType, intDataType, moneyDataType, doubleDataType, realDataType, timestampDataType, timestampTZDataType, dateDataType, timeDataType, timeTZDataType, intervalDataType, intervalDataType2, charDataType, char20DataType, varcharDataType, textDataType, binaryDataType, uuidDataType, bitDataType, booleanDataType, colorDataType, xmlDataType, varBitDataType, pointDataType, lsegDataType, boxDataType, pathDataType, polygonDataType, circleDataType, lineDataType, inetDataType, cidrDataType, macaddrDataType, macaddr8DataType, jsonDataType, jsonbDataType

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DELETE FROM
	"AllTypes" t1
WHERE
	t1."ID" IN (3, 4)

