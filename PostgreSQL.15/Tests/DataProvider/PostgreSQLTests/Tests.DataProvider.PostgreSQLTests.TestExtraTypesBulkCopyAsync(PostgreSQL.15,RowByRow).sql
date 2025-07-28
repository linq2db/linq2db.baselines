BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Byte Smallint -- Int16
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
DECLARE @ByteT Smallint -- Int16
SET     @ByteT = NULL
DECLARE @SByteT Smallint -- Int16
SET     @SByteT = NULL
DECLARE @Int16T Smallint -- Int16
SET     @Int16T = NULL
DECLARE @UInt16T Integer -- Int32
SET     @UInt16T = NULL
DECLARE @Int32T Integer -- Int32
SET     @Int32T = NULL
DECLARE @UInt32T Bigint -- Int64
SET     @UInt32T = NULL
DECLARE @Int64T Bigint -- Int64
SET     @Int64T = NULL
DECLARE @UInt64T Numeric -- Decimal
SET     @UInt64T = NULL

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
(
	:Id,
	:Byte,
	:SByte,
	:Int16,
	:UInt16,
	:Int32,
	:UInt32,
	:Int64,
	:UInt64,
	:ByteT,
	:SByteT,
	:Int16T,
	:UInt16T,
	:Int32T,
	:UInt32T,
	:Int64T,
	:UInt64T
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Byte Smallint -- Int16
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
DECLARE @ByteT Smallint -- Int16
SET     @ByteT = 255
DECLARE @SByteT Smallint -- Int16
SET     @SByteT = 127
DECLARE @Int16T Smallint -- Int16
SET     @Int16T = 32767
DECLARE @UInt16T Integer -- Int32
SET     @UInt16T = 65535
DECLARE @Int32T Integer -- Int32
SET     @Int32T = 2147483647
DECLARE @UInt32T Bigint -- Int64
SET     @UInt32T = 4294967295
DECLARE @Int64T Bigint -- Int64
SET     @Int64T = 9223372036854775807
DECLARE @UInt64T Numeric(20, 0) -- Decimal
SET     @UInt64T = 18446744073709551615

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
(
	:Id,
	:Byte,
	:SByte,
	:Int16,
	:UInt16,
	:Int32,
	:UInt32,
	:Int64,
	:UInt64,
	:ByteT,
	:SByteT,
	:Int16T,
	:UInt16T,
	:Int32T,
	:UInt32T,
	:Int64T,
	:UInt64T
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

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

