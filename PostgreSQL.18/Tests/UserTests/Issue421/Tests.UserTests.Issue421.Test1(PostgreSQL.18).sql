﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @BlobValue Bytea(3) -- Binary
SET     @BlobValue = E'\\x010203'::bytea

INSERT INTO "BlobClass"
(
	"Id",
	"BlobValue"
)
VALUES
(
	:Id,
	:BlobValue
)

BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	t1."Id",
	t1."BlobValue"
FROM
	"BlobClass" t1
WHERE
	t1."Id" = 1
LIMIT 1

BeforeExecute
-- PostgreSQL.18 PostgreSQL
DECLARE @BlobValue Bytea(3) -- Binary
SET     @BlobValue = E'\\x030201'::bytea

UPDATE
	"BlobClass"
SET
	"BlobValue" = :BlobValue
WHERE
	"BlobClass"."Id" = 1

BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	t1."Id",
	t1."BlobValue"
FROM
	"BlobClass" t1
WHERE
	t1."Id" = 1
LIMIT 1

