﻿BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @date_1 Date
SET     @date_1 = TIMESTAMP '2020-02-29 00:00:00.000000'
DECLARE @take Int32
SET     @take = 1

SELECT
	a.ID,
	a."bigintDataType",
	a."numericDataType",
	a."bitDataType",
	a."smallintDataType",
	a."decimalDataType",
	a."smallmoneyDataType",
	a."intDataType",
	a."tinyintDataType",
	a."moneyDataType",
	a."floatDataType",
	a."realDataType",
	a."datetimeDataType",
	a."datetime2DataType",
	a."datetimeoffsetDataType",
	a."localZoneDataType",
	a."charDataType",
	a."varcharDataType",
	a."textDataType",
	a."ncharDataType",
	a."nvarcharDataType",
	a."ntextDataType",
	a."binaryDataType",
	a."bfileDataType",
	a."guidDataType",
	a."longDataType",
	a."uriDataType",
	a."xmlDataType"
FROM
	"AllTypes" a
WHERE
	a."datetimeDataType" = :date_1 AND ROWNUM <= :take

