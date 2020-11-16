﻿BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.9.5 PostgreSQL (asynchronously)

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
-- PostgreSQL.9.5 PostgreSQL (asynchronously)

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
-- PostgreSQL.9.5 PostgreSQL

DROP TABLE "ExtraBulkCopyTypesTable"

