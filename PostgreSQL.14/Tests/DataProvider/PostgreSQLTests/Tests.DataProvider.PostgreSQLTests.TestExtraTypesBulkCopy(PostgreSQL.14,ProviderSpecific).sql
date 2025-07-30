BeforeExecute
INSERT BULK "ExtraBulkCopyTypesTable"(Id, Byte, SByte, Int16, UInt16, Int32, UInt32, Int64, UInt64, ByteT, SByteT, Int16T, UInt16T, Int32T, UInt32T, Int64T, UInt64T)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

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

