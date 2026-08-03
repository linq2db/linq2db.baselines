-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	row_1."Id",
	((row_1."PreNotification"::BigInt - (row_1."PreNotification"::BigInt::decimal % 864000000000)::decimal) / 864000000000)::Int,
	Floor((((row_1."PreNotification"::BigInt - (row_1."PreNotification"::BigInt::decimal % 36000000000)::decimal) / 36000000000)::decimal % 24)::decimal)::Int,
	Floor((((row_1."PreNotification"::BigInt - (row_1."PreNotification"::BigInt::decimal % 600000000)::decimal) / 600000000)::decimal % 60)::decimal)::Int,
	Floor((((row_1."PreNotification"::BigInt - (row_1."PreNotification"::BigInt::decimal % 10000000)::decimal) / 10000000)::decimal % 60)::decimal)::Int,
	Floor((((row_1."PreNotification"::BigInt - (row_1."PreNotification"::BigInt::decimal % 10000)::decimal) / 10000)::decimal % 1000)::decimal)::Int,
	row_1."PreNotification"::BigInt,
	row_1."PreNotification"::BigInt::Float / 864000000000,
	row_1."PreNotification"::BigInt::Float / 36000000000,
	row_1."PreNotification"::BigInt::Float / 600000000,
	row_1."PreNotification"::BigInt::Float / 10000000,
	row_1."PreNotification"::BigInt::Float / 10000,
	Floor((((row_1."PreNotification"::BigInt - (row_1."PreNotification"::BigInt::decimal % 10)::decimal) / 10)::decimal % 1000)::decimal)::Int,
	Floor(((row_1."PreNotification"::BigInt * 100)::decimal % 1000)::decimal)::Int,
	row_1."PreNotification"::BigInt::Float / 10,
	row_1."PreNotification"::BigInt::Float * 100
FROM
	"Common_Topology_Locations" row_1
ORDER BY
	row_1."Id"

