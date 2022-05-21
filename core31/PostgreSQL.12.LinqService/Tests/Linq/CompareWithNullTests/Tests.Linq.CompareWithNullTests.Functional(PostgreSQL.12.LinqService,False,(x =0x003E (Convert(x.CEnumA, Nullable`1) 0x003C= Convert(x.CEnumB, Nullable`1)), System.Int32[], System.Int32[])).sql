BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Src"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 100
DECLARE @A Integer -- Int32
SET     @A = NULL
DECLARE @B Integer -- Int32
SET     @B = NULL
DECLARE @EnumA Text -- String
SET     @EnumA = NULL
DECLARE @EnumB Text -- String
SET     @EnumB = NULL
DECLARE @CEnumA Varchar -- String
SET     @CEnumA = NULL
DECLARE @CEnumB Varchar -- String
SET     @CEnumB = NULL

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
(
	:Id,
	:A,
	:B,
	:EnumA,
	:EnumB,
	:CEnumA,
	:CEnumB
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 101
DECLARE @A Integer -- Int32
SET     @A = NULL
DECLARE @B Integer -- Int32
SET     @B = 1
DECLARE @EnumA Text -- String
SET     @EnumA = NULL
DECLARE @EnumB Text(1) -- String
SET     @EnumB = 'A'
DECLARE @CEnumA Varchar -- String
SET     @CEnumA = NULL
DECLARE @CEnumB Varchar(9) -- String
SET     @CEnumB = '___One___'

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
(
	:Id,
	:A,
	:B,
	:EnumA,
	:EnumB,
	:CEnumA,
	:CEnumB
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 110
DECLARE @A Integer -- Int32
SET     @A = 1
DECLARE @B Integer -- Int32
SET     @B = NULL
DECLARE @EnumA Text(1) -- String
SET     @EnumA = 'A'
DECLARE @EnumB Text -- String
SET     @EnumB = NULL
DECLARE @CEnumA Varchar(9) -- String
SET     @CEnumA = '___One___'
DECLARE @CEnumB Varchar -- String
SET     @CEnumB = NULL

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
(
	:Id,
	:A,
	:B,
	:EnumA,
	:EnumB,
	:CEnumA,
	:CEnumB
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 111
DECLARE @A Integer -- Int32
SET     @A = 1
DECLARE @B Integer -- Int32
SET     @B = 1
DECLARE @EnumA Text(1) -- String
SET     @EnumA = 'A'
DECLARE @EnumB Text(1) -- String
SET     @EnumB = 'A'
DECLARE @CEnumA Varchar(9) -- String
SET     @CEnumA = '___One___'
DECLARE @CEnumB Varchar(9) -- String
SET     @CEnumB = '___One___'

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
(
	:Id,
	:A,
	:B,
	:EnumA,
	:EnumB,
	:CEnumA,
	:CEnumB
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 112
DECLARE @A Integer -- Int32
SET     @A = 1
DECLARE @B Integer -- Int32
SET     @B = 2
DECLARE @EnumA Text(1) -- String
SET     @EnumA = 'A'
DECLARE @EnumB Text(1) -- String
SET     @EnumB = 'B'
DECLARE @CEnumA Varchar(9) -- String
SET     @CEnumA = '___One___'
DECLARE @CEnumB Varchar(9) -- String
SET     @CEnumB = '___Two___'

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
(
	:Id,
	:A,
	:B,
	:EnumA,
	:EnumB,
	:CEnumA,
	:CEnumB
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 121
DECLARE @A Integer -- Int32
SET     @A = 2
DECLARE @B Integer -- Int32
SET     @B = 1
DECLARE @EnumA Text(1) -- String
SET     @EnumA = 'B'
DECLARE @EnumB Text(1) -- String
SET     @EnumB = 'A'
DECLARE @CEnumA Varchar(9) -- String
SET     @CEnumA = '___Two___'
DECLARE @CEnumB Varchar(9) -- String
SET     @CEnumB = '___One___'

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
(
	:Id,
	:A,
	:B,
	:EnumA,
	:EnumB,
	:CEnumA,
	:CEnumB
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	x."Id"
FROM
	"Src" x
WHERE
	x."CEnumA" <= x."CEnumB"
ORDER BY
	x."Id"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Src"

