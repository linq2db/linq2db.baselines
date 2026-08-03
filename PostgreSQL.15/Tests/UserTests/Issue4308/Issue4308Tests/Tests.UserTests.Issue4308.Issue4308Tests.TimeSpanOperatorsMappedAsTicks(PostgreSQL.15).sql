-- PostgreSQL.15 PostgreSQL12
SELECT
	row_1."StartDateTime" + ((row_1."PreNotification"::BigInt - (row_1."PreNotification"::BigInt::decimal % 864000000000)::decimal) / 864000000000) * Interval '1 Day' + ((row_1."PreNotification"::BigInt::decimal % 864000000000)::decimal / 10) * Interval '1 Microsecond',
	row_1."RequiredDateTime" + ((row_1."RequiredInterval"::BigInt - (row_1."RequiredInterval"::BigInt::decimal % 864000000000)::decimal) / 864000000000) * Interval '1 Day' + ((row_1."RequiredInterval"::BigInt::decimal % 864000000000)::decimal / 10) * Interval '1 Microsecond',
	row_1."StartDateTime" + ((row_1."RequiredInterval"::BigInt - (row_1."RequiredInterval"::BigInt::decimal % 864000000000)::decimal) / 864000000000) * Interval '1 Day' + ((row_1."RequiredInterval"::BigInt::decimal % 864000000000)::decimal / 10) * Interval '1 Microsecond',
	row_1."RequiredDateTime" + ((row_1."PreNotification"::BigInt - (row_1."PreNotification"::BigInt::decimal % 864000000000)::decimal) / 864000000000) * Interval '1 Day' + ((row_1."PreNotification"::BigInt::decimal % 864000000000)::decimal / 10) * Interval '1 Microsecond',
	row_1."StartDateTime" + -((row_1."PreNotification"::BigInt - (row_1."PreNotification"::BigInt::decimal % 864000000000)::decimal) / 864000000000) * Interval '1 Day' + (-(row_1."PreNotification"::BigInt::decimal % 864000000000)::decimal / 10) * Interval '1 Microsecond',
	-row_1."PreNotification",
	row_1."EndDateTime" - row_1."StartDateTime",
	row_1."EndDateTime" - row_1."RequiredDateTime",
	row_1."RequiredDateTime" - row_1."StartDateTime"
FROM
	"Common_Topology_Locations" row_1
LIMIT 2

