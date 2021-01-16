BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

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
INSERT BULK "ExtraBulkCopyTypesTable"(Id, Byte, SByte, Int16, UInt16, Int32, UInt32, Int64, UInt64

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE "ExtraBulkCopyTypesTable"

