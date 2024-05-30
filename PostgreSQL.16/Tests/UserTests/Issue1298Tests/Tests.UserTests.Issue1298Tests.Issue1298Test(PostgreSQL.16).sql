BeforeExecute
BeginTransaction
BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS mega_composites

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS mega_composites
(
	ref1 BigInt     NULL
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS qwerty

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS qwerty
(
	"Id"   BigInt NOT NULL,
	asdfgh text       NULL
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
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
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
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
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
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
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
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
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
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
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	x.ref1,
	(
		SELECT
			q.asdfgh
		FROM
			qwerty q
		WHERE
			q."Id" = x.ref1
		LIMIT 1
	)
FROM
	mega_composites x
LIMIT :take

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS qwerty

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS mega_composites

BeforeExecute
DisposeTransaction
