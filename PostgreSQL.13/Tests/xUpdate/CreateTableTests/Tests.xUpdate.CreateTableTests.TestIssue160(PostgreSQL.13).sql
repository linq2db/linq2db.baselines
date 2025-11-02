-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE aa
(
	bb Int  NOT NULL,
	cc text     NULL,

	CONSTRAINT "PK_aa" PRIMARY KEY (bb)
)

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @bb Integer -- Int32
SET     @bb = 99
DECLARE @cc Text(5) -- String
SET     @cc = 'hallo'

INSERT INTO aa
(
	bb,
	cc
)
VALUES
(
	:bb,
	:cc
)

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1.bb,
	t1.cc
FROM
	aa t1

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE aa

