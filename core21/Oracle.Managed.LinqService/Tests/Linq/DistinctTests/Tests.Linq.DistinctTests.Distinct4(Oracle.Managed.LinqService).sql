BeforeExecute
-- Oracle.Managed Oracle12

SELECT DISTINCT
	Nvl(p.Value1, MOD(p.ParentID, 2)),
	p.Value1
FROM
	Parent p

