﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL

CREATE TABLE aa
(
	bb Int  NOT NULL,
	cc text     NULL,

	CONSTRAINT "PK_aa" PRIMARY KEY (bb)
)

BeforeExecute
-- PostgreSQL.18 PostgreSQL
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

BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	t1.bb,
	t1.cc
FROM
	aa t1

BeforeExecute
-- PostgreSQL.18 PostgreSQL

DROP TABLE aa

