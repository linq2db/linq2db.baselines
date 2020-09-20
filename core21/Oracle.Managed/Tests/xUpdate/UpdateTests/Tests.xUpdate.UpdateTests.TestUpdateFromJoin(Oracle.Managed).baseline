BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE gt_s_one
(
	id   Int          NOT NULL,
	col1 VarChar(255)     NULL,
	col2 VarChar(255)     NULL,
	col3 VarChar(255)     NULL,
	col4 VarChar(255)     NULL,
	col5 VarChar(255)     NULL,
	col6 VarChar(255)     NULL,

	CONSTRAINT PK_gt_s_one PRIMARY KEY (id)
)

BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE access_mode
(
	id   Int          NOT NULL,
	code VarChar(255)     NULL,

	CONSTRAINT PK_access_mode PRIMARY KEY (id)
)

BeforeExecute
-- Oracle.Managed Oracle12

UPDATE
	gt_s_one
SET
	gt_s_one.col1 = (
		SELECT
			x.col1
		FROM
			gt_s_one x
				LEFT JOIN access_mode am ON Upper(Replace(x.col3, 'auth.', '')) = Upper(am.code)
		WHERE
			gt_s_one.id = x.id
	),
	gt_s_one.col2 = (
		SELECT
			x_1.col2
		FROM
			gt_s_one x_1
				LEFT JOIN access_mode am_1 ON Upper(Replace(x_1.col3, 'auth.', '')) = Upper(am_1.code)
		WHERE
			gt_s_one.id = x_1.id
	),
	gt_s_one.col3 = (
		SELECT
			Replace(x_2.col3, 'auth.', '')
		FROM
			gt_s_one x_2
				LEFT JOIN access_mode am_2 ON Upper(Replace(x_2.col3, 'auth.', '')) = Upper(am_2.code)
		WHERE
			gt_s_one.id = x_2.id
	),
	gt_s_one.col4 = (
		SELECT
			x_3.col4
		FROM
			gt_s_one x_3
				LEFT JOIN access_mode am_3 ON Upper(Replace(x_3.col3, 'auth.', '')) = Upper(am_3.code)
		WHERE
			gt_s_one.id = x_3.id
	),
	gt_s_one.col5 = (
		SELECT
			CASE
				WHEN x_4.col3 = 'empty' THEN '1'
				ELSE '0'
			END
		FROM
			gt_s_one x_4
				LEFT JOIN access_mode am_4 ON Upper(Replace(x_4.col3, 'auth.', '')) = Upper(am_4.code)
		WHERE
			gt_s_one.id = x_4.id
	),
	gt_s_one.col6 = (
		SELECT
			CASE
				WHEN x_5.col3 = 'empty' THEN ''
				ELSE Cast(am_5.id as VarChar2(11))
			END
		FROM
			gt_s_one x_5
				LEFT JOIN access_mode am_5 ON Upper(Replace(x_5.col3, 'auth.', '')) = Upper(am_5.code)
		WHERE
			gt_s_one.id = x_5.id
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			gt_s_one x_6
				LEFT JOIN access_mode am_6 ON Upper(Replace(x_6.col3, 'auth.', '')) = Upper(am_6.code)
		WHERE
			gt_s_one.id = x_6.id
	)

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE access_mode

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE gt_s_one

