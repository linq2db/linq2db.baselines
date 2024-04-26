BeforeExecute
BeginTransaction
BeforeExecute
INSERT ASYNC BULK "AllTypes"(bigintDataType, numericDataType, smallintDataType, intDataType, moneyDataType, doubleDataType, realDataType, timestampDataType, timestampTZDataType, dateDataType, timeDataType, timeTZDataType, intervalDataType, intervalDataType2, charDataType, char20DataType, varcharDataType, textDataType, binaryDataType, uuidDataType, bitDataType, booleanDataType, colorDataType, xmlDataType, varBitDataType, pointDataType, lsegDataType, boxDataType, pathDataType, polygonDataType, circleDataType, lineDataType, inetDataType, cidrDataType, macaddrDataType, macaddr8DataType, jsonDataType, jsonbDataType)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	t1."ID",
	t1."bigintDataType",
	t1."numericDataType",
	t1."smallintDataType",
	t1."intDataType",
	t1."moneyDataType",
	t1."doubleDataType",
	t1."realDataType",
	t1."timestampDataType",
	t1."timestampTZDataType",
	t1."dateDataType",
	t1."timeDataType",
	t1."timeTZDataType",
	t1."intervalDataType",
	t1."intervalDataType2",
	t1."charDataType",
	t1."char20DataType",
	t1."varcharDataType",
	t1."textDataType",
	t1."binaryDataType",
	t1."uuidDataType",
	t1."bitDataType",
	t1."booleanDataType",
	t1."colorDataType",
	t1."xmlDataType",
	t1."varBitDataType",
	t1."pointDataType",
	t1."lsegDataType",
	t1."boxDataType",
	t1."pathDataType",
	t1."polygonDataType",
	t1."circleDataType",
	t1."lineDataType",
	t1."inetDataType",
	t1."cidrDataType",
	t1."macaddrDataType",
	t1."macaddr8DataType",
	t1."jsonDataType",
	t1."jsonbDataType"
FROM
	"AllTypes" t1
ORDER BY
	t1."ID" DESC
LIMIT :take

BeforeExecute
RollbackTransaction
BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"AllTypes" t1
WHERE
	t1."ID" IN (13, 14)

