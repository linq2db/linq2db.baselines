-- DuckDB
DECLARE $VBLocal_id INTEGER -- Int32
SET     $VBLocal_id = 1

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID = $VBLocal_id

