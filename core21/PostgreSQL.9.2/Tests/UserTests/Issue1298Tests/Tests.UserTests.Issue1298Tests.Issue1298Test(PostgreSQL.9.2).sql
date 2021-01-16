BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

CREATE TABLE mega_composites
(
	ref1 BigInt     NULL
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

CREATE TABLE qwerty
(
	"Id"   BigInt NOT NULL,
	asdfgh text       NULL
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
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
-- PostgreSQL.9.2 PostgreSQL
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
-- PostgreSQL.9.2 PostgreSQL
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
-- PostgreSQL.9.2 PostgreSQL
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
-- PostgreSQL.9.2 PostgreSQL
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

