BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	p.Value1
FROM
	Parent p
WHERE
	Nvl(p.Value1, 0) > 0

