-- PostgreSQL.19 PostgreSQL12
SELECT
	i."Id",
	i."StrValue",
	i."StrValueNullable",
	right_1."Id",
	right_1."StrValue",
	right_1."StrValueNullable"
FROM
	"Isue2424Table" i,
	"Isue2424Table" right_1
WHERE
	i."StrValue" >= right_1."StrValue"

-- PostgreSQL.19 PostgreSQL12
SELECT
	i."Id",
	i."StrValue",
	i."StrValueNullable",
	right_1."Id",
	right_1."StrValue",
	right_1."StrValueNullable"
FROM
	"Isue2424Table" i,
	"Isue2424Table" right_1
WHERE
	i."StrValue" <= right_1."StrValue"

-- PostgreSQL.19 PostgreSQL12
SELECT
	i."Id",
	i."StrValue",
	i."StrValueNullable",
	right_1."Id",
	right_1."StrValue",
	right_1."StrValueNullable"
FROM
	"Isue2424Table" i,
	"Isue2424Table" right_1
WHERE
	i."StrValue" > right_1."StrValue"

-- PostgreSQL.19 PostgreSQL12
SELECT
	i."Id",
	i."StrValue",
	i."StrValueNullable",
	right_1."Id",
	right_1."StrValue",
	right_1."StrValueNullable"
FROM
	"Isue2424Table" i,
	"Isue2424Table" right_1
WHERE
	i."StrValue" < right_1."StrValue"

-- PostgreSQL.19 PostgreSQL12
SELECT
	i."Id",
	i."StrValue",
	i."StrValueNullable",
	right_1."Id",
	right_1."StrValue",
	right_1."StrValueNullable"
FROM
	"Isue2424Table" i,
	"Isue2424Table" right_1
WHERE
	i."StrValue" = right_1."StrValue"

-- PostgreSQL.19 PostgreSQL12
SELECT
	i."Id",
	i."StrValue",
	i."StrValueNullable",
	right_1."Id",
	right_1."StrValue",
	right_1."StrValueNullable"
FROM
	"Isue2424Table" i,
	"Isue2424Table" right_1
WHERE
	i."StrValue" <> right_1."StrValue"

-- PostgreSQL.19 PostgreSQL12
SELECT
	i."Id",
	i."StrValue",
	i."StrValueNullable",
	right_1."Id",
	right_1."StrValue",
	right_1."StrValueNullable"
FROM
	"Isue2424Table" i,
	"Isue2424Table" right_1
WHERE
	i."StrValue" >= right_1."StrValueNullable" OR right_1."StrValueNullable" IS NULL

-- PostgreSQL.19 PostgreSQL12
SELECT
	i."Id",
	i."StrValue",
	i."StrValueNullable",
	right_1."Id",
	right_1."StrValue",
	right_1."StrValueNullable"
FROM
	"Isue2424Table" i,
	"Isue2424Table" right_1
WHERE
	i."StrValue" <= right_1."StrValueNullable"

-- PostgreSQL.19 PostgreSQL12
SELECT
	i."Id",
	i."StrValue",
	i."StrValueNullable",
	right_1."Id",
	right_1."StrValue",
	right_1."StrValueNullable"
FROM
	"Isue2424Table" i,
	"Isue2424Table" right_1
WHERE
	i."StrValue" > right_1."StrValueNullable" OR right_1."StrValueNullable" IS NULL

-- PostgreSQL.19 PostgreSQL12
SELECT
	i."Id",
	i."StrValue",
	i."StrValueNullable",
	right_1."Id",
	right_1."StrValue",
	right_1."StrValueNullable"
FROM
	"Isue2424Table" i,
	"Isue2424Table" right_1
WHERE
	i."StrValue" < right_1."StrValueNullable"

-- PostgreSQL.19 PostgreSQL12
SELECT
	i."Id",
	i."StrValue",
	i."StrValueNullable",
	right_1."Id",
	right_1."StrValue",
	right_1."StrValueNullable"
FROM
	"Isue2424Table" i,
	"Isue2424Table" right_1
WHERE
	i."StrValue" = right_1."StrValueNullable"

-- PostgreSQL.19 PostgreSQL12
SELECT
	i."Id",
	i."StrValue",
	i."StrValueNullable",
	right_1."Id",
	right_1."StrValue",
	right_1."StrValueNullable"
FROM
	"Isue2424Table" i,
	"Isue2424Table" right_1
WHERE
	i."StrValue" <> right_1."StrValueNullable" OR right_1."StrValueNullable" IS NULL

-- PostgreSQL.19 PostgreSQL12
SELECT
	i."Id",
	i."StrValue",
	i."StrValueNullable",
	right_1."Id",
	right_1."StrValue",
	right_1."StrValueNullable"
FROM
	"Isue2424Table" i,
	"Isue2424Table" right_1
WHERE
	i."StrValueNullable" >= right_1."StrValueNullable" OR
	right_1."StrValueNullable" IS NULL

-- PostgreSQL.19 PostgreSQL12
SELECT
	i."Id",
	i."StrValue",
	i."StrValueNullable",
	right_1."Id",
	right_1."StrValue",
	right_1."StrValueNullable"
FROM
	"Isue2424Table" i,
	"Isue2424Table" right_1
WHERE
	i."StrValueNullable" <= right_1."StrValueNullable" OR
	i."StrValueNullable" IS NULL

-- PostgreSQL.19 PostgreSQL12
SELECT
	i."Id",
	i."StrValue",
	i."StrValueNullable",
	right_1."Id",
	right_1."StrValue",
	right_1."StrValueNullable"
FROM
	"Isue2424Table" i,
	"Isue2424Table" right_1
WHERE
	i."StrValueNullable" > right_1."StrValueNullable" OR
	i."StrValueNullable" IS NOT NULL AND right_1."StrValueNullable" IS NULL

-- PostgreSQL.19 PostgreSQL12
SELECT
	i."Id",
	i."StrValue",
	i."StrValueNullable",
	right_1."Id",
	right_1."StrValue",
	right_1."StrValueNullable"
FROM
	"Isue2424Table" i,
	"Isue2424Table" right_1
WHERE
	i."StrValueNullable" < right_1."StrValueNullable" OR
	i."StrValueNullable" IS NULL AND right_1."StrValueNullable" IS NOT NULL

-- PostgreSQL.19 PostgreSQL12
SELECT
	i."Id",
	i."StrValue",
	i."StrValueNullable",
	right_1."Id",
	right_1."StrValue",
	right_1."StrValueNullable"
FROM
	"Isue2424Table" i,
	"Isue2424Table" right_1
WHERE
	i."StrValueNullable" = right_1."StrValueNullable" OR
	i."StrValueNullable" IS NULL AND right_1."StrValueNullable" IS NULL

-- PostgreSQL.19 PostgreSQL12
SELECT
	i."Id",
	i."StrValue",
	i."StrValueNullable",
	right_1."Id",
	right_1."StrValue",
	right_1."StrValueNullable"
FROM
	"Isue2424Table" i,
	"Isue2424Table" right_1
WHERE
	i."StrValueNullable" <> right_1."StrValueNullable" OR
	i."StrValueNullable" IS NULL AND right_1."StrValueNullable" IS NOT NULL OR
	i."StrValueNullable" IS NOT NULL AND right_1."StrValueNullable" IS NULL

