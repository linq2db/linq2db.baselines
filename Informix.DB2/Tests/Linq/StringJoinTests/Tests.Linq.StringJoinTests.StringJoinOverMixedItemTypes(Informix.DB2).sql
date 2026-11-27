-- Informix.DB2 Informix
SELECT
	e.Value1 || ',' || Nvl(e.Name, '') || ',' || e.Id
FROM
	JoinProbeEntity e

