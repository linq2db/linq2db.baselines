BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS gt_s_one

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS access_mode

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS access_mode
(
	id   Int  NOT NULL,
	code text     NULL,

	CONSTRAINT "PK_access_mode" PRIMARY KEY (id)
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

UPDATE
	gt_s_one
SET
	col1 = gt_s_one.col1,
	col2 = gt_s_one.col2,
	col3 = REPLACE(gt_s_one.col3, 'auth.', ''),
	col4 = gt_s_one.col4,
	col5 = CASE
		WHEN gt_s_one.col3 = 'empty' THEN '1'
		ELSE '0'
	END,
	col6 = CASE
		WHEN gt_s_one.col3 = 'empty' THEN ''
		ELSE y1.id::text
	END
FROM
	access_mode y1
WHERE
	Upper(REPLACE(gt_s_one.col3, 'auth.', '')) = Upper(y1.code) OR
	Upper(REPLACE(gt_s_one.col3, 'auth.', '')) IS NULL AND Upper(y1.code) IS NULL

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS access_mode

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS gt_s_one

