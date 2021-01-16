BeforeExecute
INSERT ASYNC BULK "AllTypes"(bigintDataType, numericDataType, smallintDataType, intDataType, moneyDataType, doubleDataType, realDataType, timestampDataType, timestampTZDataType, dateDataType, timeDataType, timeTZDataType, intervalDataType, intervalDataType2, charDataType, char20DataType, varcharDataType, textDataType, binaryDataType, uuidDataType, bitDataType, booleanDataType, colorDataType, xmlDataType, varBitDataType, pointDataType, lsegDataType, boxDataType, pathDataType, polygonDataType, circleDataType, inetDataType, cidrDataType, macaddrDataType, jsonDataType

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DELETE FROM
	"AllTypes" t1
WHERE
	t1."ID" IN (9, 10)

