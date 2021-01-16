BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE "ExtraBulkCopyTypesTable"
(
	"Id"     Int      NOT NULL,
	"Byte"   SmallInt     NULL,
	"SByte"  SmallInt     NULL,
	"Int16"  SmallInt     NULL,
	"UInt16" Int          NULL,
	"Int32"  Int          NULL,
	"UInt32" BigInt       NULL,
	"Int64"  BigInt       NULL,
	"UInt64" Decimal      NULL
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

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
	"UInt64"
)
VALUES
(1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2,255,127,32767,65535,2147483647,4294967295,9223372036854775807,18446744073709551615)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE "ExtraBulkCopyTypesTable"

