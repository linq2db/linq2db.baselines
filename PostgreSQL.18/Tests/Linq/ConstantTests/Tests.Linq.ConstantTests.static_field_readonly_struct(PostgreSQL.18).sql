﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @p Integer -- Int32
SET     @p = 2

SELECT
	e."Id",
	e."GuidValue",
	e."GuidNullableValue",
	e."StringValue"
FROM
	"TestConstantsData" e
WHERE
	e."Id" = :Id AND e."Id" = :p

BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	t1."Id",
	t1."GuidValue",
	t1."GuidNullableValue",
	t1."StringValue"
FROM
	"TestConstantsData" t1

BeforeExecute
-- PostgreSQL.18 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @p Integer -- Int32
SET     @p = 2

SELECT
	e."Id",
	e."GuidValue",
	e."GuidNullableValue",
	e."StringValue"
FROM
	"TestConstantsData" e
WHERE
	e."Id" = :Id AND e."Id" = :p

BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	t1."Id",
	t1."GuidValue",
	t1."GuidNullableValue",
	t1."StringValue"
FROM
	"TestConstantsData" t1

