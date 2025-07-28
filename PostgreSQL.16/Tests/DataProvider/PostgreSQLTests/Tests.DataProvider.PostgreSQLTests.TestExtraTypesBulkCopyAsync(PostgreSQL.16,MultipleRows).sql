BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL (asynchronously)

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
(2,255,127,32767,65535,2147483647,4294967295::bigint,9223372036854775807::bigint,18446744073709551615::decimal(20),255,127,32767,65535,2147483647,4294967295::bigint,9223372036854775807::bigint,18446744073709551615::decimal(20))

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL (asynchronously)

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

