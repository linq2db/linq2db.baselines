BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT DISTINCT 
	Nvl(p.Value1, MOD(p.ParentID, 2)), 
	p.Value1
FROM
	Parent p

