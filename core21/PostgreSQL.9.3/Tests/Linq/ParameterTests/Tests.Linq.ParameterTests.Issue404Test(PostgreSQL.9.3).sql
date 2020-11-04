BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

CREATE TABLE IF NOT EXISTS "Table404One"
(
	"Id" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

INSERT INTO "Table404One"
(
	"Id"
)
VALUES
(1),
(2)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

CREATE TABLE IF NOT EXISTS "Table404Two"
(
	"Id"           Int NOT NULL,
	"Usage"        Int NOT NULL,
	"FirstTableId" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

INSERT INTO "Table404Two"
(
	"Id",
	"Usage",
	"FirstTableId"
)
VALUES
(1,0,1),
(2,0,1),
(3,1,1),
(4,0,2),
(5,1,2),
(6,1,2)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	key_data_result."Id",
	v."Id",
	v."Usage",
	v."FirstTableId"
FROM
	(
		SELECT DISTINCT
			t1."Id"
		FROM
			(
				SELECT
					c_1."Id"
				FROM
					"Table404One" c_1
				LIMIT :take
			) t1
	) key_data_result
		INNER JOIN "Table404Two" v ON v."FirstTableId" = key_data_result."Id"

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	c_1."Id"
FROM
	"Table404One" c_1
LIMIT :take

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1
DECLARE @Usage_2 Integer -- Int32
SET     @Usage_2 = 0

SELECT
	key_data_result."Id",
	v."Id",
	v."Usage",
	v."FirstTableId"
FROM
	(
		SELECT DISTINCT
			t1."Id"
		FROM
			(
				SELECT
					c_1."Id"
				FROM
					"Table404One" c_1
				LIMIT :take
			) t1
	) key_data_result
		INNER JOIN "Table404Two" v ON v."Usage" = :Usage_2 AND v."FirstTableId" = key_data_result."Id"

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	c_1."Id"
FROM
	"Table404One" c_1
LIMIT :take

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1
DECLARE @Usage_2 Integer -- Int32
SET     @Usage_2 = 1

SELECT
	key_data_result."Id",
	v."Id",
	v."Usage",
	v."FirstTableId"
FROM
	(
		SELECT DISTINCT
			t1."Id"
		FROM
			(
				SELECT
					c_1."Id"
				FROM
					"Table404One" c_1
				LIMIT :take
			) t1
	) key_data_result
		INNER JOIN "Table404Two" v ON v."Usage" = :Usage_2 AND v."FirstTableId" = key_data_result."Id"

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	c_1."Id"
FROM
	"Table404One" c_1
LIMIT :take

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DROP TABLE IF EXISTS "Table404Two"

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DROP TABLE IF EXISTS "Table404One"

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

CREATE TABLE IF NOT EXISTS "Table404One"
(
	"Id" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

INSERT INTO "Table404One"
(
	"Id"
)
VALUES
(1),
(2)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

CREATE TABLE IF NOT EXISTS "Table404Two"
(
	"Id"           Int NOT NULL,
	"Usage"        Int NOT NULL,
	"FirstTableId" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

INSERT INTO "Table404Two"
(
	"Id",
	"Usage",
	"FirstTableId"
)
VALUES
(1,0,1),
(2,0,1),
(3,1,1),
(4,0,2),
(5,1,2),
(6,1,2)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	key_data_result."Id",
	v."Id",
	v."Usage",
	v."FirstTableId"
FROM
	(
		SELECT DISTINCT
			t1."Id"
		FROM
			(
				SELECT
					c_1."Id"
				FROM
					"Table404One" c_1
				LIMIT :take
			) t1
	) key_data_result
		INNER JOIN "Table404Two" v ON v."FirstTableId" = key_data_result."Id"

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	c_1."Id"
FROM
	"Table404One" c_1
LIMIT :take

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1
DECLARE @Usage_2 Integer -- Int32
SET     @Usage_2 = 0

SELECT
	key_data_result."Id",
	v."Id",
	v."Usage",
	v."FirstTableId"
FROM
	(
		SELECT DISTINCT
			t1."Id"
		FROM
			(
				SELECT
					c_1."Id"
				FROM
					"Table404One" c_1
				LIMIT :take
			) t1
	) key_data_result
		INNER JOIN "Table404Two" v ON v."Usage" = :Usage_2 AND v."FirstTableId" = key_data_result."Id"

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	c_1."Id"
FROM
	"Table404One" c_1
LIMIT :take

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1
DECLARE @Usage_2 Integer -- Int32
SET     @Usage_2 = 1

SELECT
	key_data_result."Id",
	v."Id",
	v."Usage",
	v."FirstTableId"
FROM
	(
		SELECT DISTINCT
			t1."Id"
		FROM
			(
				SELECT
					c_1."Id"
				FROM
					"Table404One" c_1
				LIMIT :take
			) t1
	) key_data_result
		INNER JOIN "Table404Two" v ON v."Usage" = :Usage_2 AND v."FirstTableId" = key_data_result."Id"

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	c_1."Id"
FROM
	"Table404One" c_1
LIMIT :take

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DROP TABLE IF EXISTS "Table404Two"

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DROP TABLE IF EXISTS "Table404One"

