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
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Byte Smallint -- Byte
SET     @Byte = NULL
DECLARE @SByte Smallint -- Int16
SET     @SByte = NULL
DECLARE @Int16 Smallint -- Int16
SET     @Int16 = NULL
DECLARE @UInt16 Integer -- Int32
SET     @UInt16 = NULL
DECLARE @Int32 Integer -- Int32
SET     @Int32 = NULL
DECLARE @UInt32 Bigint -- Int64
SET     @UInt32 = NULL
DECLARE @Int64 Bigint -- Int64
SET     @Int64 = NULL
DECLARE @UInt64 Numeric -- Decimal
SET     @UInt64 = NULL

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
(
	:Id,
	:Byte,
	:SByte,
	:Int16,
	:UInt16,
	:Int32,
	:UInt32,
	:Int64,
	:UInt64
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Byte Smallint -- Byte
SET     @Byte = 255
DECLARE @SByte Smallint -- Int16
SET     @SByte = 127
DECLARE @Int16 Smallint -- Int16
SET     @Int16 = 32767
DECLARE @UInt16 Integer -- Int32
SET     @UInt16 = 65535
DECLARE @Int32 Integer -- Int32
SET     @Int32 = 2147483647
DECLARE @UInt32 Bigint -- Int64
SET     @UInt32 = 4294967295
DECLARE @Int64 Bigint -- Int64
SET     @Int64 = 9223372036854775807
DECLARE @UInt64 Numeric(20, 0) -- Decimal
SET     @UInt64 = 18446744073709551615

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
(
	:Id,
	:Byte,
	:SByte,
	:Int16,
	:UInt16,
	:Int32,
	:UInt32,
	:Int64,
	:UInt64
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."Byte",
	t1."SByte",
	t1."Int16",
	t1."UInt16",
	t1."Int32",
	t1."UInt32",
	t1."Int64",
	t1."UInt64"
FROM
	"ExtraBulkCopyTypesTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE "ExtraBulkCopyTypesTable"

