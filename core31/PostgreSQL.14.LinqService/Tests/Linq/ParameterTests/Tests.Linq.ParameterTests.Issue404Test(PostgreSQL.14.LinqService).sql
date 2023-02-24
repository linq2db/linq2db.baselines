BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Table404One"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Table404One"
(
	"Id" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO "Table404One"
(
	"Id"
)
VALUES
(
	:Id
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2

INSERT INTO "Table404One"
(
	"Id"
)
VALUES
(
	:Id
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Table404Two"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Table404Two"
(
	"Id"           Int NOT NULL,
	"Usage"        Int NOT NULL,
	"FirstTableId" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Usage_1 Integer -- Int32
SET     @Usage_1 = 0
DECLARE @FirstTableId Integer -- Int32
SET     @FirstTableId = 1

INSERT INTO "Table404Two"
(
	"Id",
	"Usage",
	"FirstTableId"
)
VALUES
(
	:Id,
	:Usage_1,
	:FirstTableId
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Usage_1 Integer -- Int32
SET     @Usage_1 = 0
DECLARE @FirstTableId Integer -- Int32
SET     @FirstTableId = 1

INSERT INTO "Table404Two"
(
	"Id",
	"Usage",
	"FirstTableId"
)
VALUES
(
	:Id,
	:Usage_1,
	:FirstTableId
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Usage_1 Integer -- Int32
SET     @Usage_1 = 1
DECLARE @FirstTableId Integer -- Int32
SET     @FirstTableId = 1

INSERT INTO "Table404Two"
(
	"Id",
	"Usage",
	"FirstTableId"
)
VALUES
(
	:Id,
	:Usage_1,
	:FirstTableId
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @Usage_1 Integer -- Int32
SET     @Usage_1 = 0
DECLARE @FirstTableId Integer -- Int32
SET     @FirstTableId = 2

INSERT INTO "Table404Two"
(
	"Id",
	"Usage",
	"FirstTableId"
)
VALUES
(
	:Id,
	:Usage_1,
	:FirstTableId
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 5
DECLARE @Usage_1 Integer -- Int32
SET     @Usage_1 = 1
DECLARE @FirstTableId Integer -- Int32
SET     @FirstTableId = 2

INSERT INTO "Table404Two"
(
	"Id",
	"Usage",
	"FirstTableId"
)
VALUES
(
	:Id,
	:Usage_1,
	:FirstTableId
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 6
DECLARE @Usage_1 Integer -- Int32
SET     @Usage_1 = 1
DECLARE @FirstTableId Integer -- Int32
SET     @FirstTableId = 2

INSERT INTO "Table404Two"
(
	"Id",
	"Usage",
	"FirstTableId"
)
VALUES
(
	:Id,
	:Usage_1,
	:FirstTableId
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	key_data_result."Id",
	v."Id",
	v."Usage",
	v."FirstTableId"
FROM
	(
		SELECT DISTINCT
			c_1."Id"
		FROM
			"Table404One" c_1
	) key_data_result
		INNER JOIN "Table404Two" v ON v."FirstTableId" = key_data_result."Id"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	c_1."Id"
FROM
	"Table404One" c_1

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Usage_1 Integer -- Int32
SET     @Usage_1 = 0

SELECT
	key_data_result."Id",
	v."Id",
	v."Usage",
	v."FirstTableId"
FROM
	(
		SELECT DISTINCT
			c_1."Id"
		FROM
			"Table404One" c_1
	) key_data_result
		INNER JOIN "Table404Two" v ON v."Usage" = :Usage_1 AND v."FirstTableId" = key_data_result."Id"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	c_1."Id"
FROM
	"Table404One" c_1

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Usage_1 Integer -- Int32
SET     @Usage_1 = 1

SELECT
	key_data_result."Id",
	v."Id",
	v."Usage",
	v."FirstTableId"
FROM
	(
		SELECT DISTINCT
			c_1."Id"
		FROM
			"Table404One" c_1
	) key_data_result
		INNER JOIN "Table404Two" v ON v."Usage" = :Usage_1 AND v."FirstTableId" = key_data_result."Id"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	c_1."Id"
FROM
	"Table404One" c_1

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Table404Two"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Table404One"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Table404One"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Table404One"
(
	"Id" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO "Table404One"
(
	"Id"
)
VALUES
(
	:Id
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2

INSERT INTO "Table404One"
(
	"Id"
)
VALUES
(
	:Id
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Table404Two"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Table404Two"
(
	"Id"           Int NOT NULL,
	"Usage"        Int NOT NULL,
	"FirstTableId" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Usage_1 Integer -- Int32
SET     @Usage_1 = 0
DECLARE @FirstTableId Integer -- Int32
SET     @FirstTableId = 1

INSERT INTO "Table404Two"
(
	"Id",
	"Usage",
	"FirstTableId"
)
VALUES
(
	:Id,
	:Usage_1,
	:FirstTableId
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Usage_1 Integer -- Int32
SET     @Usage_1 = 0
DECLARE @FirstTableId Integer -- Int32
SET     @FirstTableId = 1

INSERT INTO "Table404Two"
(
	"Id",
	"Usage",
	"FirstTableId"
)
VALUES
(
	:Id,
	:Usage_1,
	:FirstTableId
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Usage_1 Integer -- Int32
SET     @Usage_1 = 1
DECLARE @FirstTableId Integer -- Int32
SET     @FirstTableId = 1

INSERT INTO "Table404Two"
(
	"Id",
	"Usage",
	"FirstTableId"
)
VALUES
(
	:Id,
	:Usage_1,
	:FirstTableId
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @Usage_1 Integer -- Int32
SET     @Usage_1 = 0
DECLARE @FirstTableId Integer -- Int32
SET     @FirstTableId = 2

INSERT INTO "Table404Two"
(
	"Id",
	"Usage",
	"FirstTableId"
)
VALUES
(
	:Id,
	:Usage_1,
	:FirstTableId
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 5
DECLARE @Usage_1 Integer -- Int32
SET     @Usage_1 = 1
DECLARE @FirstTableId Integer -- Int32
SET     @FirstTableId = 2

INSERT INTO "Table404Two"
(
	"Id",
	"Usage",
	"FirstTableId"
)
VALUES
(
	:Id,
	:Usage_1,
	:FirstTableId
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 6
DECLARE @Usage_1 Integer -- Int32
SET     @Usage_1 = 1
DECLARE @FirstTableId Integer -- Int32
SET     @FirstTableId = 2

INSERT INTO "Table404Two"
(
	"Id",
	"Usage",
	"FirstTableId"
)
VALUES
(
	:Id,
	:Usage_1,
	:FirstTableId
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	key_data_result."Id",
	v."Id",
	v."Usage",
	v."FirstTableId"
FROM
	(
		SELECT DISTINCT
			c_1."Id"
		FROM
			"Table404One" c_1
	) key_data_result
		INNER JOIN "Table404Two" v ON v."FirstTableId" = key_data_result."Id"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	c_1."Id"
FROM
	"Table404One" c_1

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Usage_1 Integer -- Int32
SET     @Usage_1 = 0

SELECT
	key_data_result."Id",
	v."Id",
	v."Usage",
	v."FirstTableId"
FROM
	(
		SELECT DISTINCT
			c_1."Id"
		FROM
			"Table404One" c_1
	) key_data_result
		INNER JOIN "Table404Two" v ON v."Usage" = :Usage_1 AND v."FirstTableId" = key_data_result."Id"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	c_1."Id"
FROM
	"Table404One" c_1

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Usage_1 Integer -- Int32
SET     @Usage_1 = 1

SELECT
	key_data_result."Id",
	v."Id",
	v."Usage",
	v."FirstTableId"
FROM
	(
		SELECT DISTINCT
			c_1."Id"
		FROM
			"Table404One" c_1
	) key_data_result
		INNER JOIN "Table404Two" v ON v."Usage" = :Usage_1 AND v."FirstTableId" = key_data_result."Id"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	c_1."Id"
FROM
	"Table404One" c_1

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Table404Two"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Table404One"

