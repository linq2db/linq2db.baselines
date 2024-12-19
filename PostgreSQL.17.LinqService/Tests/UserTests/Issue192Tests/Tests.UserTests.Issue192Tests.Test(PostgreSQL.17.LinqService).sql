﻿BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TypeConvertTable"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "TypeConvertTable"
(
	"Name"      text        NOT NULL,
	"BoolValue" Char        NOT NULL,
	"GuidValue" VarChar(50)     NULL
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Name Text(11) -- String
SET     @Name = 'NotVerified'
DECLARE @BoolValue Char -- String
SET     @BoolValue = 'N'
DECLARE @GuidValue Varchar(36) -- String
SET     @GuidValue = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

INSERT INTO "TypeConvertTable"
(
	"Name",
	"BoolValue",
	"GuidValue"
)
VALUES
(
	:Name,
	:BoolValue,
	:GuidValue
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Name Text(8) -- String
SET     @Name = 'Verified'
DECLARE @BoolValue Char -- String
SET     @BoolValue = 'Y'
DECLARE @GuidValue Varchar(36) -- String
SET     @GuidValue = 'a948600d-de21-4f74-8ac2-9516b287076e'

INSERT INTO "TypeConvertTable"
(
	"Name",
	"BoolValue",
	"GuidValue"
)
VALUES
(
	:Name,
	:BoolValue,
	:GuidValue
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"TypeConvertTable" t1
WHERE
	t1."BoolValue" = 'N'

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"TypeConvertTable" t1
WHERE
	t1."BoolValue" = 'Y'

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @cond Varchar(36) -- String
SET     @cond = 'a948600d-de21-4f74-8ac2-9516b287076e'

SELECT
	COUNT(*)
FROM
	"TypeConvertTable" t1
WHERE
	t1."GuidValue" = :cond

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."Name",
	t1."BoolValue",
	t1."GuidValue"
FROM
	"TypeConvertTable" t1
WHERE
	t1."BoolValue" = 'N'
LIMIT 1

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."Name",
	t1."BoolValue",
	t1."GuidValue"
FROM
	"TypeConvertTable" t1
WHERE
	t1."BoolValue" = 'Y'
LIMIT 1

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."Name",
	t1."BoolValue",
	t1."GuidValue"
FROM
	"TypeConvertTable" t1
WHERE
	t1."BoolValue" = 'N'
LIMIT 1

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."Name",
	t1."BoolValue",
	t1."GuidValue"
FROM
	"TypeConvertTable" t1
WHERE
	t1."BoolValue" = 'Y'
LIMIT 1

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."Name",
	t1."BoolValue",
	t1."GuidValue"
FROM
	"TypeConvertTable" t1
WHERE
	t1."BoolValue" = 'N'
LIMIT 1

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."Name",
	t1."BoolValue",
	t1."GuidValue"
FROM
	"TypeConvertTable" t1
WHERE
	t1."BoolValue" = 'Y'
LIMIT 1

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."Name",
	t1."BoolValue",
	t1."GuidValue"
FROM
	"TypeConvertTable" t1
WHERE
	t1."BoolValue" = 'N'
LIMIT 1

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."Name",
	t1."BoolValue",
	t1."GuidValue"
FROM
	"TypeConvertTable" t1
WHERE
	t1."BoolValue" = 'Y'
LIMIT 1

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."Name",
	t1."BoolValue",
	t1."GuidValue"
FROM
	"TypeConvertTable" t1
WHERE
	t1."BoolValue" = 'N'
LIMIT 1

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."Name",
	t1."BoolValue",
	t1."GuidValue"
FROM
	"TypeConvertTable" t1
WHERE
	t1."BoolValue" = 'Y'
LIMIT 1

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @GuidValue Varchar(36) -- String
SET     @GuidValue = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

SELECT
	t1."Name",
	t1."BoolValue",
	t1."GuidValue"
FROM
	"TypeConvertTable" t1
WHERE
	t1."GuidValue" = :GuidValue
LIMIT 1

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @GuidValue Varchar(36) -- String
SET     @GuidValue = 'a948600d-de21-4f74-8ac2-9516b287076e'

SELECT
	t1."Name",
	t1."BoolValue",
	t1."GuidValue"
FROM
	"TypeConvertTable" t1
WHERE
	t1."GuidValue" = :GuidValue
LIMIT 1

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TypeConvertTable"

