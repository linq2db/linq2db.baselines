BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "ExtraBulkCopyTypesTable"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "ExtraBulkCopyTypesTable"
(
	"Id"      Int         NOT NULL,
	"Byte"    SmallInt        NULL,
	"SByte"   SmallInt        NULL,
	"Int16"   SmallInt        NULL,
	"UInt16"  Int             NULL,
	"Int32"   Int             NULL,
	"UInt32"  BigInt          NULL,
	"Int64"   BigInt          NULL,
	"UInt64"  decimal(20)     NULL,
	"ByteT"   SmallInt        NULL,
	"SByteT"  SmallInt        NULL,
	"Int16T"  SmallInt        NULL,
	"UInt16T" Int             NULL,
	"Int32T"  Int             NULL,
	"UInt32T" BigInt          NULL,
	"Int64T"  BigInt          NULL,
	"UInt64T" Decimal         NULL
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)

INSERT INTO "ExtraBulkCopyTypesTable"
(
	"Id",
	"Byte",
	"SByte",
	"Int16",
	"UInt16",
	"Int32",
	"UInt32",
	"Int64",
	"UInt64",
	"ByteT",
	"SByteT",
	"Int16T",
	"UInt16T",
	"Int32T",
	"UInt32T",
	"Int64T",
	"UInt64T"
)
VALUES
(1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2,255,127,32767,65535,2147483647,4294967295,9223372036854775807,18446744073709551615,255,127,32767,65535,2147483647,4294967295,9223372036854775807,18446744073709551615)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	t1."Id",
	t1."Byte",
	t1."SByte",
	t1."Int16",
	t1."UInt16",
	t1."Int32",
	t1."UInt32",
	t1."Int64",
	t1."UInt64",
	t1."ByteT",
	t1."SByteT",
	t1."Int16T",
	t1."UInt16T",
	t1."Int32T",
	t1."UInt32T",
	t1."Int64T",
	t1."UInt64T"
FROM
	"ExtraBulkCopyTypesTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "ExtraBulkCopyTypesTable"

