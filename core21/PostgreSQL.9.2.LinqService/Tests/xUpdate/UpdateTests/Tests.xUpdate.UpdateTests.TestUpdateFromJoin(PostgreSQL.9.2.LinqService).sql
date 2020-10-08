BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

CREATE TABLE gt_s_one
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
-- PostgreSQL.9.2 PostgreSQL

CREATE TABLE access_mode
(
	id   Int  NOT NULL,
	code text     NULL,

	CONSTRAINT "PK_access_mode" PRIMARY KEY (id)
)

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

UPDATE
	gt_s_one
SET
	col1 = x.col1,
	col2 = x.col2,
	col3 = Replace(x.col3, 'auth.', ''),
	col4 = x.col4,
	col5 = CASE
		WHEN x.col3 = 'empty' THEN '1'
		ELSE '0'
	END,
	col6 = CASE
		WHEN x.col3 = 'empty' THEN ''
		ELSE Cast(am.id as VarChar(11))
	END
FROM
	gt_s_one x
		LEFT JOIN access_mode am ON (Upper(Replace(x.col3, 'auth.', '')) = Upper(am.code) OR Upper(Replace(x.col3, 'auth.', '')) IS NULL AND Upper(am.code) IS NULL)
WHERE
	gt_s_one.id = x.id

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE access_mode

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

DROP TABLE gt_s_one

