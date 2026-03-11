-- PostgreSQL.18 PostgreSQL

UPDATE
	gt_s_one
SET
	col1 = gt_s_one.col1,
	col2 = gt_s_one.col2,
	col3 = Replace(x.col3, 'auth.', ''),
	col4 = gt_s_one.col4,
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
	gt_s_one.id = x.id

