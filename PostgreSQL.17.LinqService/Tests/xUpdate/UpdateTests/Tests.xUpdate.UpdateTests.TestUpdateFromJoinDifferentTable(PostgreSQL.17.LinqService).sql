BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

UPDATE
	gt_s_one_target
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
		ELSE y1.id::text
	END
FROM
	gt_s_one x
		LEFT JOIN access_mode y1 ON Upper(Replace(x.col3, 'auth.', '')) = Upper(y1.code) OR x.col3 IS NULL AND y1.code IS NULL
WHERE
	x.id = gt_s_one_target.id

