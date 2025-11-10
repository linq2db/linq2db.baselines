-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name Text(11) -- String
SET     @Name = 'NotVerified'
DECLARE @BoolValue Char -- String
SET     @BoolValue = 'N'
DECLARE @GuidValue Varchar(36) -- String
SET     @GuidValue = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

INSERT INTO "TypeConvertTable"
(
	"Id",
	"Name",
	"BoolValue",
	"GuidValue"
)
VALUES
(
	:Id,
	:Name,
	:BoolValue,
	:GuidValue
)

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Name Text(8) -- String
SET     @Name = 'Verified'
DECLARE @BoolValue Char -- String
SET     @BoolValue = 'Y'
DECLARE @GuidValue Varchar(36) -- String
SET     @GuidValue = 'a948600d-de21-4f74-8ac2-9516b287076e'

INSERT INTO "TypeConvertTable"
(
	"Id",
	"Name",
	"BoolValue",
	"GuidValue"
)
VALUES
(
	:Id,
	:Name,
	:BoolValue,
	:GuidValue
)

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"TypeConvertTable" t1
WHERE
	t1."BoolValue" = 'N'

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"TypeConvertTable" t1
WHERE
	t1."BoolValue" = 'Y'

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @cond Varchar(36) -- String
SET     @cond = 'a948600d-de21-4f74-8ac2-9516b287076e'

SELECT
	COUNT(*)
FROM
	"TypeConvertTable" t1
WHERE
	t1."GuidValue" = :cond

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Name",
	t1."BoolValue",
	t1."GuidValue"
FROM
	"TypeConvertTable" t1
WHERE
	t1."BoolValue" = 'N'
LIMIT 1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Name",
	t1."BoolValue",
	t1."GuidValue"
FROM
	"TypeConvertTable" t1
WHERE
	t1."BoolValue" = 'Y'
LIMIT 1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Name",
	t1."BoolValue",
	t1."GuidValue"
FROM
	"TypeConvertTable" t1
WHERE
	t1."BoolValue" = 'N'
LIMIT 1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Name",
	t1."BoolValue",
	t1."GuidValue"
FROM
	"TypeConvertTable" t1
WHERE
	t1."BoolValue" = 'Y'
LIMIT 1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Name",
	t1."BoolValue",
	t1."GuidValue"
FROM
	"TypeConvertTable" t1
WHERE
	t1."BoolValue" = 'N'
LIMIT 1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Name",
	t1."BoolValue",
	t1."GuidValue"
FROM
	"TypeConvertTable" t1
WHERE
	t1."BoolValue" = 'Y'
LIMIT 1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Name",
	t1."BoolValue",
	t1."GuidValue"
FROM
	"TypeConvertTable" t1
WHERE
	t1."BoolValue" = 'N'
LIMIT 1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Name",
	t1."BoolValue",
	t1."GuidValue"
FROM
	"TypeConvertTable" t1
WHERE
	t1."BoolValue" = 'Y'
LIMIT 1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Name",
	t1."BoolValue",
	t1."GuidValue"
FROM
	"TypeConvertTable" t1
WHERE
	t1."BoolValue" = 'N'
LIMIT 1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Name",
	t1."BoolValue",
	t1."GuidValue"
FROM
	"TypeConvertTable" t1
WHERE
	t1."BoolValue" = 'Y'
LIMIT 1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @GuidValue Varchar(36) -- String
SET     @GuidValue = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

SELECT
	t1."Id",
	t1."Name",
	t1."BoolValue",
	t1."GuidValue"
FROM
	"TypeConvertTable" t1
WHERE
	t1."GuidValue" = :GuidValue
LIMIT 1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @GuidValue Varchar(36) -- String
SET     @GuidValue = 'a948600d-de21-4f74-8ac2-9516b287076e'

SELECT
	t1."Id",
	t1."Name",
	t1."BoolValue",
	t1."GuidValue"
FROM
	"TypeConvertTable" t1
WHERE
	t1."GuidValue" = :GuidValue
LIMIT 1

