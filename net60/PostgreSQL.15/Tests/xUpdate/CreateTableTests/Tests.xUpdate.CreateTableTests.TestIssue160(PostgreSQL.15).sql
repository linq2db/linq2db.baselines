BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE aa
(
	bb Int  NOT NULL,
	cc text     NULL,

	CONSTRAINT "PK_aa" PRIMARY KEY (bb)
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
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
-- PostgreSQL.15 PostgreSQL

SELECT
	t1.cc,
	t1.bb
FROM
	aa t1

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE aa

