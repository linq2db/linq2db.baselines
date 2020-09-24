BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

CREATE TABLE aa
(
	bb Int  NOT NULL,
	cc text     NULL,

	CONSTRAINT "PK_aa" PRIMARY KEY (bb)
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @cc Text(5) -- String
SET     @cc = 'hallo'
DECLARE @bb Integer -- Int32
SET     @bb = 99

INSERT INTO aa
(
	cc,
	bb
)
VALUES
(
	:cc,
	:bb
)

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	t1.cc,
	t1.bb
FROM
	aa t1

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

DROP TABLE aa

