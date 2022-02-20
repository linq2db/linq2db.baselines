BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

CREATE TABLE mega_composites
(
	ref1 BigInt     NULL
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

CREATE TABLE qwerty
(
	"Id"   BigInt NOT NULL,
	asdfgh text       NULL
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Bigint -- Int64
SET     @Id = 1
DECLARE @asdfgh Text(4) -- String
SET     @asdfgh = 'res1'

INSERT INTO qwerty
(
	"Id",
	asdfgh
)
VALUES
(
	:Id,
	:asdfgh
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Bigint -- Int64
SET     @Id = 100500
DECLARE @asdfgh Text(9) -- String
SET     @asdfgh = 'res100500'

INSERT INTO qwerty
(
	"Id",
	asdfgh
)
VALUES
(
	:Id,
	:asdfgh
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @ref1 Bigint -- Int64
SET     @ref1 = 100500

INSERT INTO mega_composites
(
	ref1
)
VALUES
(
	:ref1
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @ref1 Bigint -- Int64
SET     @ref1 = 1

INSERT INTO mega_composites
(
	ref1
)
VALUES
(
	:ref1
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @ref1 Bigint -- Int64
SET     @ref1 = 100500

INSERT INTO mega_composites
(
	ref1
)
VALUES
(
	:ref1
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @take_1 Integer -- Int32
SET     @take_1 = 1
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	x.ref1,
	t1.asdfgh,
	t1.is_empty
FROM
	mega_composites x
		LEFT JOIN LATERAL (
			SELECT
				q.asdfgh,
				1 as is_empty
			FROM
				qwerty q
			WHERE
				q."Id" = x.ref1
			LIMIT :take_1
		) t1 ON 1=1
LIMIT :take

