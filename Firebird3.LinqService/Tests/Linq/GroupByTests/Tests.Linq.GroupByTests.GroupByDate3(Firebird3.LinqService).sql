﻿BeforeExecute
-- Firebird3 Firebird

SELECT
	SUM("grp_1"."MoneyValue"),
	"grp_1"."Year_1",
	"grp_1"."Month_1"
FROM
	(
		SELECT
			CAST(LPad(CAST(Extract(year from "grp"."DateTimeValue") AS VarChar(4) CHARACTER SET UNICODE_FSS), 4, '0') || '-' || LPad(CAST(Extract(month from "grp"."DateTimeValue") AS VarChar(2) CHARACTER SET UNICODE_FSS), 2, '0') || '-01' AS TimeStamp) as "c1",
			"grp"."MoneyValue",
			Extract(year from CAST(LPad(CAST(Extract(year from "grp"."DateTimeValue") AS VarChar(4) CHARACTER SET UNICODE_FSS), 4, '0') || '-' || LPad(CAST(Extract(month from "grp"."DateTimeValue") AS VarChar(2) CHARACTER SET UNICODE_FSS), 2, '0') || '-01' AS TimeStamp)) as "Year_1",
			Extract(month from CAST(LPad(CAST(Extract(year from "grp"."DateTimeValue") AS VarChar(4) CHARACTER SET UNICODE_FSS), 4, '0') || '-' || LPad(CAST(Extract(month from "grp"."DateTimeValue") AS VarChar(2) CHARACTER SET UNICODE_FSS), 2, '0') || '-01' AS TimeStamp)) as "Month_1"
		FROM
			"LinqDataTypes" "grp"
	) "grp_1"
GROUP BY
	"grp_1"."c1",
	"grp_1"."Year_1",
	"grp_1"."Month_1"

