BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

UPDATE
	gt_s_one
SET
	col1 = gt_s_one.col1,
	col2 = gt_s_one.col2,
	col3 = Replace(gt_s_one.col3, 'auth.', ''),
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
	Upper(Replace(gt_s_one.col3, 'auth.', '')) = Upper(y1.code) OR
	gt_s_one.col3 IS NULL AND y1.code IS NULL

