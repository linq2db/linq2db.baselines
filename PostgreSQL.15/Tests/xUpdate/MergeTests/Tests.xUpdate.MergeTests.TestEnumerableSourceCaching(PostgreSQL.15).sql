﻿BeforeExecute
-- PostgreSQL.15 PostgreSQL

MERGE INTO "CacheTestTable" "Target"
USING (VALUES
	(1,1), (2,2)
) "Source"
(
	"Id",
	"Value_1"
)
ON ("Target"."Id" = "Source"."Id")

WHEN MATCHED THEN
UPDATE
SET
	"Value" = "Source"."Value_1"

WHEN NOT MATCHED THEN
INSERT
(
	"Id",
	"Value"
)
VALUES
(
	"Source"."Id",
	"Source"."Value_1"
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Value"
FROM
	"CacheTestTable" t1
ORDER BY
	t1."Id"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

MERGE INTO "CacheTestTable" "Target"
USING (VALUES
	(1,1), (2,4), (3,3)
) "Source"
(
	"Id",
	"Value_1"
)
ON ("Target"."Id" = "Source"."Id")

WHEN MATCHED THEN
UPDATE
SET
	"Value" = "Source"."Value_1"

WHEN NOT MATCHED THEN
INSERT
(
	"Id",
	"Value"
)
VALUES
(
	"Source"."Id",
	"Source"."Value_1"
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Value"
FROM
	"CacheTestTable" t1
ORDER BY
	t1."Id"

