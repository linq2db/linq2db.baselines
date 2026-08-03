-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."StartDateTime",
	t1."EndDateTime",
	t1."RequiredDateTime",
	t1."PreNotification",
	t1."RequiredInterval"
FROM
	"Common_Topology_Locations" t1
FETCH NEXT 2 ROWS ONLY

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	row_1."StartDateTime" + ((CAST(row_1."PreNotification" AS Number(19)) - MOD(CAST(row_1."PreNotification" AS Number(19)), 864000000000)) / 864000000000) * INTERVAL '1' DAY + MOD(CAST(row_1."PreNotification" AS Number(19)), 864000000000) * INTERVAL '0.0000001' SECOND(1,7) as "Added",
	row_1."RequiredDateTime" + ((CAST(row_1."RequiredInterval" AS Number(19)) - MOD(CAST(row_1."RequiredInterval" AS Number(19)), 864000000000)) / 864000000000) * INTERVAL '1' DAY + MOD(CAST(row_1."RequiredInterval" AS Number(19)), 864000000000) * INTERVAL '0.0000001' SECOND(1,7) as "AddedRequired",
	row_1."StartDateTime" + ((CAST(row_1."RequiredInterval" AS Number(19)) - MOD(CAST(row_1."RequiredInterval" AS Number(19)), 864000000000)) / 864000000000) * INTERVAL '1' DAY + MOD(CAST(row_1."RequiredInterval" AS Number(19)), 864000000000) * INTERVAL '0.0000001' SECOND(1,7) as "AddedNullableDate",
	row_1."RequiredDateTime" + ((CAST(row_1."PreNotification" AS Number(19)) - MOD(CAST(row_1."PreNotification" AS Number(19)), 864000000000)) / 864000000000) * INTERVAL '1' DAY + MOD(CAST(row_1."PreNotification" AS Number(19)), 864000000000) * INTERVAL '0.0000001' SECOND(1,7) as "AddedNullableInterval",
	row_1."StartDateTime" + -((CAST(row_1."PreNotification" AS Number(19)) - MOD(CAST(row_1."PreNotification" AS Number(19)), 864000000000)) / 864000000000) * INTERVAL '1' DAY + -MOD(CAST(row_1."PreNotification" AS Number(19)), 864000000000) * INTERVAL '0.0000001' SECOND(1,7) as "Subtracted",
	-row_1."PreNotification" as "Negated",
	CAST(row_1."EndDateTime" AS TIMESTAMP) - CAST(row_1."StartDateTime" AS TIMESTAMP) as "Difference",
	CAST(row_1."EndDateTime" AS TIMESTAMP) - CAST(row_1."RequiredDateTime" AS TIMESTAMP) as "DifferenceNullableLeft",
	CAST(row_1."RequiredDateTime" AS TIMESTAMP) - CAST(row_1."StartDateTime" AS TIMESTAMP) as "DifferenceNullableRight"
FROM
	"Common_Topology_Locations" row_1
FETCH NEXT 2 ROWS ONLY

