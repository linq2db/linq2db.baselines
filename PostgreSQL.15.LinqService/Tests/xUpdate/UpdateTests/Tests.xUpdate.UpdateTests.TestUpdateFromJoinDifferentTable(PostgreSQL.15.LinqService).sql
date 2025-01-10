BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS gt_s_one

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS gt_s_one
(
	id   Int  NOT NULL,
	col1 text     NULL,
	col2 text     NULL,
	col3 text     NULL,
	col4 text     NULL,
	col5 text     NULL,
	col6 text     NULL,

	CONSTRAINT "PK_gt_s_one" PRIMARY KEY (id)
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS gt_s_one_target

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS gt_s_one_target
(
	id   Int  NOT NULL,
	col1 text     NULL,
	col2 text     NULL,
	col3 text     NULL,
	col4 text     NULL,
	col5 text     NULL,
	col6 text     NULL,

	CONSTRAINT "PK_gt_s_one_target" PRIMARY KEY (id)
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS access_mode

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS access_mode
(
	id   Int  NOT NULL,
	code text     NULL,

	CONSTRAINT "PK_access_mode" PRIMARY KEY (id)
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

UPDATE
	gt_s_one_target
SET
	col1 = x.col1,
	col2 = x.col2,
	col3 = REPLACE(x.col3, 'auth.', ''),
	col4 = x.col4,
	col5 = CASE
		WHEN x.col3 = 'empty' THEN '1'
		ELSE '0'
	END,
	col6 = CASE
		WHEN x.col3 = 'empty' THEN ''
		ELSE y1.id::text
	END
FROM
	gt_s_one x
		LEFT JOIN access_mode y1 ON Upper(REPLACE(x.col3, 'auth.', '')) = Upper(y1.code) OR REPLACE(x.col3, 'auth.', '') IS NULL AND y1.code IS NULL
WHERE
	x.id = gt_s_one_target.id

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS access_mode

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS gt_s_one_target

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS gt_s_one

