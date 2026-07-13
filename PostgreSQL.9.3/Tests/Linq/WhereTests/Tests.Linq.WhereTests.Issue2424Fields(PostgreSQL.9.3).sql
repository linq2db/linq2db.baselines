-- PostgreSQL.9.3 PostgreSQL
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

-- PostgreSQL.9.3 PostgreSQL
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

-- PostgreSQL.9.3 PostgreSQL
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

-- PostgreSQL.9.3 PostgreSQL
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

-- PostgreSQL.9.3 PostgreSQL
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

-- PostgreSQL.9.3 PostgreSQL
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

-- PostgreSQL.9.3 PostgreSQL
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

-- PostgreSQL.9.3 PostgreSQL
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

-- PostgreSQL.9.3 PostgreSQL
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

-- PostgreSQL.9.3 PostgreSQL
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

-- PostgreSQL.9.3 PostgreSQL
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

-- PostgreSQL.9.3 PostgreSQL
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

-- PostgreSQL.9.3 PostgreSQL
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

-- PostgreSQL.9.3 PostgreSQL
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

-- PostgreSQL.9.3 PostgreSQL
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

-- PostgreSQL.9.3 PostgreSQL
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

-- PostgreSQL.9.3 PostgreSQL
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

-- PostgreSQL.9.3 PostgreSQL
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

