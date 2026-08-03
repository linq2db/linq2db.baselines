-- PostgreSQL.13 PostgreSQL12
SELECT
	t."StartDateTime",
	t."StartDateTime2",
	t."EndDateTime",
	t."PreNotification",
	t."PreNotification2",
	t."PreNotification3",
	t."StrField",
	t."Status",
	t."StartDateTime" + -((t."PreNotification"::BigInt - (t."PreNotification"::BigInt::decimal % 864000000000)::decimal) / 864000000000) * Interval '1 Day' + (-(t."PreNotification"::BigInt::decimal % 864000000000)::decimal / 10) * Interval '1 Microsecond'
FROM
	"Common_Topology_Locations" t
LIMIT 1

-- PostgreSQL.13 PostgreSQL12
SELECT
	t."StartDateTime",
	t."PreNotification",
	t."StartDateTime" + -((t."PreNotification"::BigInt - (t."PreNotification"::BigInt::decimal % 864000000000)::decimal) / 864000000000) * Interval '1 Day' + (-(t."PreNotification"::BigInt::decimal % 864000000000)::decimal / 10) * Interval '1 Microsecond'
FROM
	"Common_Topology_Locations" t
LIMIT 1

-- PostgreSQL.13 PostgreSQL12
SELECT
	t."StartDateTime",
	t."StartDateTime2",
	t."EndDateTime",
	t."PreNotification",
	t."PreNotification2",
	t."PreNotification3",
	t."StrField",
	t."Status",
	t."StartDateTime" + -((t."PreNotification"::BigInt - (t."PreNotification"::BigInt::decimal % 864000000000)::decimal) / 864000000000) * Interval '1 Day' + (-(t."PreNotification"::BigInt::decimal % 864000000000)::decimal / 10) * Interval '1 Microsecond'
FROM
	"Common_Topology_Locations" t
WHERE
	Floor(Extract(hour From (t."StartDateTime" + -((t."PreNotification"::BigInt - (t."PreNotification"::BigInt::decimal % 864000000000)::decimal) / 864000000000) * Interval '1 Day' + (-(t."PreNotification"::BigInt::decimal % 864000000000)::decimal / 10) * Interval '1 Microsecond')))::Int = 13
LIMIT 1

-- PostgreSQL.13 PostgreSQL12
SELECT
	t."StartDateTime",
	t."StartDateTime2",
	t."EndDateTime",
	t."PreNotification",
	t."PreNotification2",
	t."PreNotification3",
	t."StrField",
	t."Status",
	t."StartDateTime" + -((t."PreNotification"::BigInt - (t."PreNotification"::BigInt::decimal % 864000000000)::decimal) / 864000000000) * Interval '1 Day' + (-(t."PreNotification"::BigInt::decimal % 864000000000)::decimal / 10) * Interval '1 Microsecond'
FROM
	"Common_Topology_Locations" t
WHERE
	Floor(Extract(minute From (t."StartDateTime" + -((t."PreNotification"::BigInt - (t."PreNotification"::BigInt::decimal % 864000000000)::decimal) / 864000000000) * Interval '1 Day' + (-(t."PreNotification"::BigInt::decimal % 864000000000)::decimal / 10) * Interval '1 Microsecond')))::Int = 51
LIMIT 1

-- PostgreSQL.13 PostgreSQL12
SELECT
	t."StartDateTime",
	t."StartDateTime2",
	t."EndDateTime",
	t."PreNotification",
	t."PreNotification2",
	t."PreNotification3",
	t."StrField",
	t."Status",
	t."StartDateTime" + -((t."PreNotification"::BigInt - (t."PreNotification"::BigInt::decimal % 864000000000)::decimal) / 864000000000) * Interval '1 Day' + (-(t."PreNotification"::BigInt::decimal % 864000000000)::decimal / 10) * Interval '1 Microsecond'
FROM
	"Common_Topology_Locations" t
WHERE
	Floor(Extract(second From (t."StartDateTime" + -((t."PreNotification"::BigInt - (t."PreNotification"::BigInt::decimal % 864000000000)::decimal) / 864000000000) * Interval '1 Day' + (-(t."PreNotification"::BigInt::decimal % 864000000000)::decimal / 10) * Interval '1 Microsecond')))::Int >= 52 AND
	Floor(Extract(second From (t."StartDateTime" + -((t."PreNotification"::BigInt - (t."PreNotification"::BigInt::decimal % 864000000000)::decimal) / 864000000000) * Interval '1 Day' + (-(t."PreNotification"::BigInt::decimal % 864000000000)::decimal / 10) * Interval '1 Microsecond')))::Int <= 54
LIMIT 1

