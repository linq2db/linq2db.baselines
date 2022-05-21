BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Src"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Src"
(
	"Id"     Int     NOT NULL,
	"A"      Int         NULL,
	"B"      Int         NULL,
	"EnumA"  text        NULL,
	"EnumB"  text        NULL,
	"CEnumA" VarChar     NULL,
	"CEnumB" VarChar     NULL
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

INSERT INTO "Src"
(
	"Id",
	"A",
	"B",
	"EnumA",
	"EnumB",
	"CEnumA",
	"CEnumB"
)
VALUES
(100,NULL,NULL,NULL,NULL,NULL,NULL),
(101,NULL,1,NULL,'A',NULL,'___One___'),
(110,1,NULL,'A',NULL,'___One___',NULL),
(111,1,1,'A','A','___One___','___One___'),
(112,1,2,'A','B','___One___','___Two___'),
(121,2,1,'B','A','___Two___','___One___')

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	x."Id"
FROM
	"Src" x
WHERE
	x."CEnumA" < x."CEnumB"
ORDER BY
	x."Id"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Src"

